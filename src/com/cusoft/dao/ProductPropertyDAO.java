package com.cusoft.dao;

import java.util.List;

import com.cusoft.bean.DensityGroup;

public interface ProductPropertyDAO {
	
	List<DensityGroup> getProductPropListData(String productProperty);
	int updateDesc(String type, String desc, String id);
}