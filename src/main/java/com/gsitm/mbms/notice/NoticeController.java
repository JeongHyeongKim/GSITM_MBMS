package com.gsitm.mbms.notice;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.gsitm.mbms.employee.EmployeeDTO;

/**
 * @주제 :
 * @작성일 : 2019. 5. 16.
 * @작성자 : 송민기
 */

@Controller
@RequestMapping("/notice")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Inject
	private NoticeService service;

	/**
	 * 공지사항
	 * 목록-------------------------------------------------------------------------------------
	 * 
	 * @throws Exception
	 */

	// 공지사항 리스트
	// 전체보기-----------------------------------------------------------------------------------
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList(Model model, HttpServletRequest request) throws Exception {

		List<NoticeDTO> noticeList = service.selectAll();
		model.addAttribute("noticeList", noticeList);

		return "notice/noticeList";
	}


	// 글 작성 폼 보기--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/noticeInsertForm", method = RequestMethod.POST)
	public void noticeInsertForm(Model model) throws Exception {
		
	}

	// 글 작성 submit
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
	public String noticeInsert(NoticeDTO noticeDTO, Model model , HttpSession session , MultipartFile uploadedfile, HttpServletRequest request) throws Exception {

		//현재 로그인 정보 가져와서 작성자로 넣기
		EmployeeDTO employeeDTO = (EmployeeDTO)session.getAttribute("login");
		String empNo = employeeDTO.getEmpNo();
		noticeDTO.setWriterEmpNo(empNo);
/*		
		//첨부파일 업로드
	    //logger.info("upload() POST 호출");
	    //logger.info("파일 이름: {}", uploadedfile.getOriginalFilename());
	    //logger.info("파일 크기: {}", uploadedfile.getSize());
		final String UPLOAD_PATH = request.getSession().getServletContext().getRealPath("") + "resources\\uploadfiles";
	    //System.out.println(UPLOAD_PATH);
		UploadMyTool.saveFile(uploadedfile, UPLOAD_PATH);
		
		noticeDTO.setattach(UPLOAD_PATH+"\\"+uploadedfile);
		*/
		service.insert(noticeDTO);
		return "redirect:/notice/noticeList";
	}

	// 공지사항 글 상세보기-----------------------------------------------------------------------------
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public void noticeDetail(@RequestParam("noticeNo") int noticeNo, Model model) throws Exception {
		
		//해당 게시글 정보 가져오기
		NoticeDTO noticeDTO = service.selectByNoticeNo(noticeNo);
		model.addAttribute("noticeDTO", noticeDTO);
		
		//리스트 가져오기
		List<NoticeDTO> noticeList = service.selectAll();

		//첫 게시물, 마지막 게시물 번호 가져오기(다음글, 이전글 끝부분 막기 용)
		int latestNoticeNo = Integer.parseInt(    noticeList.get(0).getNoticeNo()      ); //최근글
		int firstNoticeNo = Integer.parseInt(   noticeList.get(noticeList.size()-1).getNoticeNo()     ); //처음글
		boolean isLatestNo = noticeDTO.getNoticeNo().equals(latestNoticeNo+"");
		boolean isFirstNo = noticeDTO.getNoticeNo().equals(firstNoticeNo+"");
		model.addAttribute("isLatestNo", isLatestNo);
		model.addAttribute("isFirstNo", isFirstNo);

		//리스트에서의 현재글 인덱스(글번호 아님) 찾기 : 다음글 이전글 할때 필요함
		int currentIndex = 0;
		for (int i = 0; i < noticeList.size(); i++) { // 리스트 포문돌려서 현재인덱스 찾아내는것
			if (noticeList.get(i).getNoticeNo().equals(noticeDTO.getNoticeNo())) {
				currentIndex = i;
				break;
			}
		}
		
		//다음글 이전글 번호 가져오기
		if (!isLatestNo) { //최신글에서 다음글하면 에러나니까
			int nextNoticeNo = Integer.parseInt(    noticeList.get(currentIndex-1).getNoticeNo()      ); //다음글
			model.addAttribute("nextNoticeNo", nextNoticeNo);
		}
		if (!isFirstNo) { //처음글에서 이전글하면 에러나니까
			int prevNoticeNo = Integer.parseInt(    noticeList.get(currentIndex+1).getNoticeNo()        ); //이전글
			model.addAttribute("prevNoticeNo", prevNoticeNo);
		}
		
		
	}

	// delete----------------------------------------------------------------------------------------------------
	// 글삭제
	@RequestMapping(value = "/noticeDelete", method = RequestMethod.POST)
	public String noticeDelete(@RequestParam("noticeNo") int noticeNo, Model model) throws Exception {

		service.delete(noticeNo);
		return "redirect:/notice/noticeList";
	}

	// update-----------------------------------------------------------------------------------------------------
	// 글 수정 폼 보기
	@RequestMapping(value = "/noticeUpdateForm", method = RequestMethod.POST)
	public void noticeUpdateForm(@RequestParam("noticeNo") int noticeNo, Model model) throws Exception {
		model.addAttribute("noticeDTO", service.selectByNoticeNo(noticeNo));
	}

	// 글 수정 submit
	@RequestMapping(value = "/noticeUpdate", method = RequestMethod.POST)
	public String updateSubmit(NoticeDTO noticeDTO, Model model) throws Exception {

		service.update(noticeDTO);

		return "redirect:/notice/noticeList";
	}
	
	
	
	
	
	//파일업로드-----------------------------------------------------------------------------------
	
	
/*	@RequestMapping(value = "/fileupload",method = RequestMethod.POST)
	public void upload(MultipartFile uploadedfile, HttpServletRequest request){
	    logger.info("upload() POST 호출");
	    logger.info("파일 이름: {}", uploadedfile.getOriginalFilename());
	    logger.info("파일 크기: {}", uploadedfile.getSize());
		//final String UPLOAD_PATH = request.getSession().getServletContext().getRealPath("") + "resources\\uploadfiles";
		
		final String UPLOAD_PATH = "c:\\";        	logger.info("1");
		System.out.println(UPLOAD_PATH);        		  logger.info("2");
		UploadMyTool.saveFile(uploadedfile, UPLOAD_PATH);                logger.info("3");
		
	    return "redirect:/notice/noticeList";
	}*/
	
/*	@RequestMapping(value = "/fileupload",method = RequestMethod.POST)
	public void upload(MultipartFile uploadedfile, HttpServletRequest request){
	    logger.info("upload() POST 호출");
	    logger.info("파일 이름: {}", uploadedfile.getOriginalFilename());
	    logger.info("파일 크기: {}", uploadedfile.getSize());
		//final String UPLOAD_PATH = request.getSession().getServletContext().getRealPath("") + "resources\\uploadfiles";
		
		final String UPLOAD_PATH = "c:\\";        	logger.info("1");
		System.out.println(UPLOAD_PATH);        		  logger.info("2");
		UploadMyTool.saveFile(uploadedfile, UPLOAD_PATH);                logger.info("3");
		
	    return "redirect:/notice/noticeList";
	}*/
	
/*	
	@RequestMapping(value = "/file_upload", method = RequestMethod.POST)
	public String procFileUpload(FileBean fileBean, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String root_path = session.getServletContext().getRealPath("/"); // 웹서비스 root 경로
		String attach_path = "resources/files/attach/";
		MultipartFile upload = fileBean.getUpload();
		String filename = "";
		String CKEditorFuncNum = "";
		
		if (upload != null) {//The method getServletContext() is undefined for the type HttpServletRequest
			filename = upload.getOriginalFilename();
			fileBean.setFilename(filename);
			CKEditorFuncNum = fileBean.getCKEditorFuncNum();
			try {
				File file = new File(root_path + attach_path + filename);
				logger.info(root_path + attach_path + filename);
				 logger.info("파일생성");
				upload.transferTo(file);
				 logger.info("파일업로드완료");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String file_path = "/GSITM_MBMS/" + attach_path + filename;
		model.addAttribute("file_path", file_path);
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		
		JsonObject json = new JsonObject();
		 json.addProperty("uploaded", 1);
         json.addProperty("fileName", filename);
         json.addProperty("url", file_path);
		
		 logger.info(file_path);
		return "noticeInsertForm";
	}*/
	

	
	
	
	@RequestMapping(value="file_upload", method=RequestMethod.POST)
	@ResponseBody
	public String fileUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile) throws Exception {
		
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		if(file != null){
			if(file.getSize() > 0 && StringUtils.isNotBlank(file.getName())){
				if(file.getContentType().toLowerCase().startsWith("image/")){
					try{
						String fileName = file.getName();
						byte[] bytes = file.getBytes();
						String uploadPath = req.getSession().getServletContext().getRealPath("") + "resources\\uploadfiles";
						File uploadFile = new File(uploadPath);
						if(!uploadFile.exists()){
							uploadFile.mkdirs();
						}
						fileName = UUID.randomUUID().toString();
						uploadPath = uploadPath + "/" + fileName;
						out = new FileOutputStream(new File(uploadPath));
                        out.write(bytes);
                        
                        printWriter = resp.getWriter();
                        resp.setContentType("text/html");
                        
                        String fileUrl = req.getContextPath() + "/resources/uploadfiles/" + fileName;
                        
                        // json 데이터로 등록
                        // {"uploaded" : 1, "fileName" : "test.jpg", "url" : "/img/test.jpg"}
                        // 이런 형태로 리턴이 나가야함.
                        json.addProperty("uploaded", 1);
                        json.addProperty("fileName", fileName);
                        json.addProperty("url", fileUrl);
                        
                        printWriter.println(json);
                    }catch(IOException e){
                        e.printStackTrace();
                    }finally{
                        if(out != null){
                            out.close();
                        }
                        if(printWriter != null){
                            printWriter.close();
                        }		
					}
				}
			}
		}
		
		return null;
	}	
	
	
	
	
	
	
	
	
	

}
