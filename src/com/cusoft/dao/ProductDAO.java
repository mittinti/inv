package com.cusoft.dao;

import java.util.List;

import com.cusoft.bean.DensityGroup;
import com.cusoft.bean.FaceGroup;
import com.cusoft.bean.MakeGroup;
import com.cusoft.bean.MaterialGroup;
import com.cusoft.bean.SizeGroup;
import com.cusoft.bean.ThicknessGroup;


public interface ProductDAO {

	List<String> getDensity();
	List<String> getFace();
	List<String> getMake();
	List<String> getMaterial();
	List<String> getSizegroup();
	List<String> getThickness();
	List<String> getUomdata();
}
