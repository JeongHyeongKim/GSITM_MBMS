package com.gsitm.mbms.room;

import java.util.List;

/**
 * @주제 : 
 * @작성일 : 2019. 5. 31.
 * @작성자 : 조성윤
 */
public interface RoomService {
	//회의실 번호로 정보 찾기 
	public RoomDTO selectOneRoomByRoomNo(int roomNo);
	
	//전체 회의실 보기
	public List<RoomDTO> selectAllRoom();

	public void roomInsert(RoomDTO dto);

	
}
