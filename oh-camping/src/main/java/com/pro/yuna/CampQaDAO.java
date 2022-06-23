package com.pro.yuna;

import java.util.List;

public interface CampQaDAO {
	
	public int getCampQaListCount();
	
	public List<CampQaDTO> getCampQaList(PageDTO dto);
	
	public int writeCampQa(CampQaDTO dto);
	
	public void readCampQaCount(int no);
	
	public CampQaDTO CampQaCont(int no);
	
	public int modifyCampQa(CampQaDTO dto);
	
	public int deleteCampQa(int no);
	
	public void updateSequence(int no);
	
	public int searchCampQaCount(String field, String keyword);
	
	public List<CampQaDTO> searchCampQaList(PageDTO dto);

}
