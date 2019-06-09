package com.gsitm.mbms.reserve;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gsitm.mbms.building.BuildingDTO;
import com.gsitm.mbms.building.BuildingService;
import com.gsitm.mbms.room.RoomDTO;
import com.gsitm.mbms.room.RoomService;

/**
 * @주제 : 
 * @작성일 : 2019. 5. 24.
 * @작성자 : 조성윤
 */
@Controller
@RequestMapping("/reserve")
public class ReserveController {
	@Autowired
	private ReserveService reserveService;
	@Autowired
	private BuildingService buildingService;
	@Autowired
	private RoomService roomService;

	/** 회의실 소개 페이지 **/
	@RequestMapping("/roomList")
	public String roomList(Model model) {
		
		List<RoomDTO> rooms = reserveService.selectAllRoom();
		List<BuildingDTO> buildings = buildingService.SelectAll();
		
		model.addAttribute("rooms", rooms);
		model.addAttribute("buildings", buildings);
		
		return "room/roomList";
	}
	
	/** 회의실 소개 - 조건검색 **/
	@RequestMapping("/roomSearch")
	public ModelAndView roomSearch(@RequestParam Map<String, String> map, Model model) {
		
		List<RoomDTO> rooms = reserveService.selectRoomBySearch(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("rooms", rooms);
		mav.setViewName("jsonView");	
		return mav;
	}
	
	/** 회의실 검색 페이지 **/
	@RequestMapping("/reserveSearchForm")
	public String reserveSearchForm(Model model) {
		
		List<BuildingDTO> buildings = buildingService.SelectAll();
		model.addAttribute("buildings", buildings);
		
		return "reserve/reserveSearchForm";
	}
	
	/** 회의실 검색을 통한 예약가능한 회의실 리스트 조회 페이지 **/
	@RequestMapping("/availableRoomList")
	public String availableRoomList(@RequestParam Map<String,Object> map, Model model, HttpSession session) {
		System.out.println(map.toString());
		
		String dateRange = (String) map.get("reservationtime");
		String dates[] = dateRange.split("-");
		map.put("startDate", dates[0].trim());
		map.put("endDate", dates[1].trim());
		map.put("empCount", (String) map.get("empCount") == "" ? 0 : map.get("empCount"));
		
		//회의실 검색 정보 저장
		session.setAttribute("reservationInfo", map);
		
		List<RoomDTO> rooms = reserveService.selectAvailableRoom(map);
		List<BuildingDTO> buildings = buildingService.SelectAll();
		
		model.addAttribute("rooms", rooms);
		model.addAttribute("buildings", buildings);
		
		return "room/roomList";
	}
	
	/** 회의실 예약 양식 페이지 **/
	@RequestMapping("/reserveForm")
	public String reserveForm(ReserveHistoryDTO reserveHistoryDTO, Model model, HttpSession session) {
		@SuppressWarnings("unchecked")
		Map<String, Object> map = (Map<String,Object>)session.getAttribute("reservationInfo");
		System.out.println("reserveForm -> map : "+map);
		
		if(map!=null) {
			model.addAttribute("reservationInfo", map);
		}
		
		List<BuildingDTO> buildings = buildingService.SelectAll();
		int roomNo = reserveHistoryDTO.getRoomNo();

		if(roomNo!=0) {
			RoomDTO roomDTO = roomService.selectOneRoomByRoomNo(roomNo);
			List<ReserveHistoryDTO> reservationList = reserveService.getReservationListByRoomNo(roomNo);
			model.addAttribute("roomDTO", roomDTO);
			model.addAttribute("reservationList", reservationList);
		}
		
		model.addAttribute("reserveHistoryDTO", reserveHistoryDTO);
		model.addAttribute("buildings", buildings);
		
		return "reserve/reserveForm";
	}
	
	/** 회의실 정보 및 예약목록 JSON으로 반환 **/
	@RequestMapping("/getReservationInfo")
	public ModelAndView getReservationInfo(@RequestParam Map<String, String> map) {
		int roomNo = Integer.parseInt(map.get("roomNo"));
		
		RoomDTO roomDTO = roomService.selectOneRoomByRoomNo(roomNo);
		List<ReserveHistoryDTO> reservationList = reserveService.getReservationListByRoomNo(roomNo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("roomDTO", roomDTO);
		mav.addObject("reservationList", reservationList);
		mav.setViewName("jsonView");
		return mav;
	}
	
	/** 예약 목록 조회 **/
	@RequestMapping("/getReservationList")
	public ModelAndView getReservationList(@RequestParam Map<String, Object> map) {
		
		List<ReserveHistoryDTO> reservationList = reserveService.getReservationList(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reservationList", reservationList);
		mav.setViewName("jsonView");
		return mav;
	}
	
}