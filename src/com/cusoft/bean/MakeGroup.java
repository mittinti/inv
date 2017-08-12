package com.cusoft.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MAKEGROUP")
public class MakeGroup {

	

	@Id
	@Column (name = "MAKE_ID")
	private String makeId;
	public String getMakeId() {
		return makeId;
	}
	public void setMakeId(String makeId) {
		this.makeId = makeId;
	}
	public String getMakeDescription() {
		return makeDescription;
	}
	public void setMakeDescription(String makeDescription) {
		this.makeDescription = makeDescription;
	}
	@Column (name = "MAKE_DESC")
	private String makeDescription;
}
