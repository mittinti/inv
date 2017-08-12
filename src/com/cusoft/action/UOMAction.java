package com.cusoft.action;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

import com.cusoft.dao.UOMDao;
import com.cusoft.dao.impl.UOMDaoImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class UOMAction extends ActionSupport implements Action, ServletContextAware{

private static final long serialVersionUID = 1L;
private ServletContext ctx;
private String UomCode;
private String UomDesc;
private String remarks;
	
	public ServletContext getCtx() {
	return ctx;
}

public void setCtx(ServletContext ctx) {
	this.ctx = ctx;
}

public String getUomCode() {
	return UomCode;
}

public void setUomCode(String uomCode) {
	UomCode = uomCode;
}

public String getUomDesc() {
	return UomDesc;
}

public void setUomDesc(String uomDesc) {
	UomDesc = uomDesc;
}

public String getRemarks() {
	return remarks;
}

public void setRemarks(String remarks) {
	this.remarks = remarks;
}

	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx=sc;
		
	}
	
public String adduom()
{
	System.out.println(UomCode+" + "+UomDesc+" + "+remarks);
	SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
	UOMDao ud = new UOMDaoImpl(sf);
	String status = ud.adduom(UomCode, UomDesc, remarks);
	
	if (null!=status && !"".equals(status))
		addActionMessage("Action completed successfully!");
	else
		addActionError("UOM Code either already exists or exceeded 3 characters");
	
	return "success";
}

}
