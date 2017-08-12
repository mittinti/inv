package com.cusoft.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TAXMAST")
public class TaxMaster {
	@Id
	@Column (name = "TX_ID")
	private String taxId;
	
	@Column (name = "TX_DESC")
	private String taxDesc;
	
	@Column (name = "TX_TAX")
	private float taxAmt;
	
	@Column (name = "TX_CGST")
	private float taxCgst;
	
	@Column (name = "TX_SGST")
	private float taxSgst;
	
	@Column (name = "TX_IGST")
	private float taxIgst;
	
	@Column (name = "TX_SESS")
	private float taxSess;
	
	@Column (name = "TX_CREATED_DT")
	private Date taxCreated;
	
	@Column (name = "TX_MODIFIED_DT")
	private Date taxModified;
	
	@Column (name = "TX_OTHERS1")
	private float taxOthers1;
	
	@Column (name = "TX_OTHERS2")
	private float taxOthers2;
	
	public String getTaxId() {
		return taxId;
	}
	public void setTaxId(String taxId) {
		this.taxId = taxId;
	}
	public String getTaxDesc() {
		return taxDesc;
	}
	public void setTaxDesc(String taxDesc) {
		this.taxDesc = taxDesc;
	}
	public float getTaxAmt() {
		return taxAmt;
	}
	public void setTaxAmt(float taxAmt) {
		this.taxAmt = taxAmt;
	}
	public float getTaxCgst() {
		return taxCgst;
	}
	public void setTaxCgst(float taxCgst) {
		this.taxCgst = taxCgst;
	}
	public float getTaxSgst() {
		return taxSgst;
	}
	public void setTaxSgst(float taxSgst) {
		this.taxSgst = taxSgst;
	}
	public float getTaxIgst() {
		return taxIgst;
	}
	public void setTaxIgst(float taxIgst) {
		this.taxIgst = taxIgst;
	}
	public float getTaxSess() {
		return taxSess;
	}
	public void setTaxSess(float taxSess) {
		this.taxSess = taxSess;
	}
	public Date getTaxCreated() {
		return taxCreated;
	}
	public void setTaxCreated(Date taxCreated) {
		this.taxCreated = taxCreated;
	}
	public Date getTaxModified() {
		return taxModified;
	}
	public void setTaxModified(Date taxModified) {
		this.taxModified = taxModified;
	}
	public float getTaxOthers1() {
		return taxOthers1;
	}
	public void setTaxOthers1(float taxOthers1) {
		this.taxOthers1 = taxOthers1;
	}
	public float getTaxOthers2() {
		return taxOthers2;
	}
	public void setTaxOthers2(float taxOthers2) {
		this.taxOthers2 = taxOthers2;
	}

}
