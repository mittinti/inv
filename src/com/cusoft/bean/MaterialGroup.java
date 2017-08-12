package com.cusoft.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MATLGROUP")
public class MaterialGroup {

	public String getMaterialId() {
		return materialId;
	}
	public void setMaterialId(String materialId) {
		this.materialId = materialId;
	}
	public String getMaterialDescription() {
		return materialDescription;
	}
	public void setMaterialDescription(String materialDescription) {
		this.materialDescription = materialDescription;
	}
	public String getMaterialRemarks() {
		return materialRemarks;
	}
	public void setMaterialRemarks(String materialRemarks) {
		this.materialRemarks = materialRemarks;
	}
	@Id
	@Column (name = "MGR_ID")
	private String materialId;
	@Column (name = "MGR_DESC")
	private String materialDescription;
	@Column (name = "MGR_REMARKS")
	private String materialRemarks;
}
