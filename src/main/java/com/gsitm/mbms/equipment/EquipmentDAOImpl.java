package com.gsitm.mbms.equipment;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @주제 : 
 * @작성일 : 2019. 6. 19.
 * @작성자 : 조성윤
 */
@Repository
public class EquipmentDAOImpl implements EquipmentDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public void equipmentInsert(EquipmentDTO dto) {
		// TODO Auto-generated method stub
		session.insert("equipmentMapper.equipmentInsert", dto);
	}

	@Override
	public List<EquipmentDTO> equipmentDistinctSelect() {
		// TODO Auto-generated method stub
		return session.selectList("equipmentMapper.equipmentDistinctSelect");
	}

	@Override
	public List<EquipmentDTO> equipmentSelectAll() {
		// TODO Auto-generated method stub
		return session.selectList("equipmentMapper.equipmentSelectAll");
	}

	@Override
	public List<Map<String, Object>> equipmentSelectAllwithRoom() {
		// TODO Auto-generated method stub
		return session.selectList("equipmentMapper.equipmentSelectAllwithRoom");
	}
	
	@Override
	public List<EquipmentDTO> selectOneByRoomNo(int roomNo) {
		return session.selectList("equipmentMapper.selectOneByRoomNo", roomNo);
	}

}
