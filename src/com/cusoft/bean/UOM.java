	package com.cusoft.bean;
	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;
	@Entity
	@Table(name="UOMMAST")
	public class UOM {
		
		public String getUomId() {
			return uomId;
		}
		public void setUomId(String uomId) {
			this.uomId = uomId;
		}
		public String getUomDesc() {
			return uomDesc;
		}
		public void setUomDesc(String uomDesc) {
			this.uomDesc = uomDesc;
		}
		public String getRemarks() {
			return remarks;
		}
		public void setRemarks(String remarks) {
			this.remarks = remarks;
		}
		@Id
		@Column (name = "UOM_ID")
		private String uomId;
		
		@Column (name = "UOM_DESC")
		private String uomDesc;
		
		@Column (name = "UOM_REMARKS")
		private String remarks;
	}


