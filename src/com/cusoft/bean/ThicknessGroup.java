package com.cusoft.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="THICKGROUP")
public class ThicknessGroup {

	@Id
	@Column (name = "THK_ID")
	private String thicknessId;
	
	@Column (name = "THK_DESC")
	private String thicknessDescription;

	public String getThicknessId() {
		return thicknessId;
	}

	public void setThicknessId(String thicknessId) {
		this.thicknessId = thicknessId;
	}

	public String getThicknessDescription() {
		return thicknessDescription;
	}

	public void setThicknessDescription(String thicknessDescription) {
		this.thicknessDescription = thicknessDescription;
	}
}
