package com.cusoft.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="DENGROUP")
public class DensityGroup{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column (name = "DEN_ID")
	@SequenceGenerator(name="dengroupSeq",sequenceName="density_group_seq")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="dengroupSeq")
	
	
	private String densityId;
	public String getDensityId() {
		return densityId;
	}
	public void setDensityId(String densityId) {
		this.densityId = densityId;
	}
	public String getDensityDescription() {
		return densityDescription;
	}
	public void setDensityDescription(String densityDescription) {
		this.densityDescription = densityDescription;
	}
	@Column (name = "DEN_DESC")
	private String densityDescription;
}
