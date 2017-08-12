package com.cusoft.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SIZEGROUP")
public class SizeGroup {

	public String getSizeId() {
		return sizeId;
	}

	public void setSizeId(String sizeId) {
		this.sizeId = sizeId;
	}

	public String getSizeDescription() {
		return sizeDescription;
	}

	public void setSizeDescription(String sizeDescription) {
		this.sizeDescription = sizeDescription;
	}

	@Id
	@Column (name = "SIZE_ID")
	private String sizeId;
	
	@Column (name = "SIZE_DESC")
	private String sizeDescription;
}
