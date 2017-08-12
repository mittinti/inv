package com.cusoft.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

@Entity
@Table(name="PRODMAST")
public class Product extends ActionSupport{

	private static final long serialVersionUID = 3366561173841305221L;

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductRemarks() {
		return productRemarks;
	}
	public void setProductRemarks(String productRemarks) {
		this.productRemarks = productRemarks;
	}
	public String getProductFUOM() {
		return productFUOM;
	}
	public void setProductFUOM(String productFUOM) {
		this.productFUOM = productFUOM;
	}
	public String getProductSUOM() {
		return productSUOM;
	}
	public void setProductSUOM(String productSUOM) {
		this.productSUOM = productSUOM;
	}
	public String getProductConvfactor() {
		return productConvfactor;
	}
	public void setProductConvfactor(String productConvfactor) {
		this.productConvfactor = productConvfactor;
	}
	public String getProductSaleAmount() {
		return productSaleAmount;
	}
	public void setProductSaleAmount(String productSaleAmount) {
		this.productSaleAmount = productSaleAmount;
	}
	@RequiredStringValidator(message = "Enter your ProductMaterial Id")
	public String getProductMaterialId() {
		return productMaterialId;
	}
	public void setProductMaterialId(String productMaterialId) {
		this.productMaterialId = productMaterialId;
	}
	public String getProductDensityId() {
		return productDensityId;
	}
	public void setProductDensityId(String productDensityId) {
		this.productDensityId = productDensityId;
	}
	public String getProductThicknessId() {
		return productThicknessId;
	}
	public void setProductThicknessId(String productThicknessId) {
		this.productThicknessId = productThicknessId;
	}
	public String getProductFaceId() {
		return productFaceId;
	}
	public void setProductFaceId(String productFaceId) {
		this.productFaceId = productFaceId;
	}
	public String getProductSizeId() {
		return productSizeId;
	}
	public void setProductSizeId(String productSizeId) {
		this.productSizeId = productSizeId;
	}
	public String getProductMakeId() {
		return productMakeId;
	}
	public void setProductMakeId(String productMakeId) {
		this.productMakeId = productMakeId;
	}
	public String getProductGroupId() {
		return productGroupId;
	}
	public void setProductGroupId(String productGroupId) {
		this.productGroupId = productGroupId;
	}
	public String getProductMinStockQty() {
		return productMinStockQty;
	}
	public void setProductMinStockQty(String productMinStockQty) {
		this.productMinStockQty = productMinStockQty;
	}
	public String getProductStandards() {
		return productStandards;
	}
	public void setProductStandards(String productStandards) {
		this.productStandards = productStandards;
	}
	public String getProductTaxCode() {
		return productTaxId;
	}
	public void setProductTaxCode(String productTaxId) {
		this.productTaxId = productTaxId;
	}
	public Date getProdCreatedDate() {
		return prodCreatedDate;
	}
	public void setProdCreatedDate(Date prodCreatedDate) {
		this.prodCreatedDate = prodCreatedDate;
	}
	public Date getProdModifiedDate() {
		return prodModifiedDate;
	}
	public void setProdModifiedDate(Date prodModifiedDate) {
		this.prodModifiedDate = prodModifiedDate;
	}
	@Id
	@SequenceGenerator(name="prodIdSeq",sequenceName="prod_id_seq")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="prodIdSeq")
	@Column (name = "PROD_ID")
	private int productId;
	
	
	@Column (name = "PROD_DESC")
	private String productDesc;
	
	@Column (name = "PROD_REMARKS")
	private String productRemarks;
	
	@Column (name = "PROD_FUOMID")
	private String productFUOM;
	
	@Column (name = "PROD_SUOMID")
	private String productSUOM;
	
	@Column (name = "PROD_CONVFACT")
	private String productConvfactor;
	
	@Column (name = "PROD_SAMT")
	private String productSaleAmount;
	
	
	@Column (name = "PROD_MATLID")
	private String productMaterialId;
	
	@Column (name = "PROD_DENID")
	private String productDensityId;
	
	@Column (name = "PROD_THKID")
	private String productThicknessId;
	
	@Column (name = "PROD_FACID")
	private String productFaceId;
	
	@Column (name = "PROD_SIZEID")
	private String productSizeId;
	
	@Column (name = "PROD_MAKEID")
	private String productMakeId;
	
	@Column (name = "PROD_GRPID")
	private String productGroupId;
	
	@Column (name = "PROD_MSQTY")
	private String productMinStockQty;
	
	@Column (name = "PROD_STANDARDS")
	private String productStandards;
	
	@Column (name = "PROD_TAX_ID")
	private String productTaxId;
	
	@Column (name = "PROD_CREATED_DT")
	private Date prodCreatedDate;
	
	@Column (name = "PROD_MODIFIED_DT")
	private Date prodModifiedDate;

	
	

}
