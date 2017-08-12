package com.cusoft.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FACEGROUP")
public class FaceGroup {

	public String getFaceId() {
		return faceId;
	}
	public void setFaceId(String faceId) {
		this.faceId = faceId;
	}
	public String getFaceDescription() {
		return faceDescription;
	}
	public void setFaceDescription(String faceDescription) {
		this.faceDescription = faceDescription;
	}

	@Id
	@Column (name = "FAC_ID")
	private String faceId;
	@Column (name = "FAC_DESC")
	private String faceDescription;
}
