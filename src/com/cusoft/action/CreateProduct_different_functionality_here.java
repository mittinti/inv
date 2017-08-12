package com.cusoft.action;

import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

import com.cusoft.bean.*;
import com.cusoft.dao.impl.ProductDAOImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CreateProduct_different_functionality_here extends ActionSupport implements Action,ModelDriven<Users>, ServletContextAware, SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ServletContext ctx;
	@SuppressWarnings("unused")
	private SessionMap<String,Object> sess;
	private String densityDescription;
	private String prod_prop_select;
	//private DensityGroup den = new DensityGroup();
	
	
	public String getProd_prop_select() {
		return prod_prop_select;
	}
	public void setProd_prop_select(String prod_prop_select) {
		this.prod_prop_select = prod_prop_select;
	}
	public String getDensityDescription() {
		return densityDescription;
	}
	public void setDensityDescription(String densityDescription) {
		this.densityDescription = densityDescription;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		sess = (SessionMap<String, Object>) session;
		
	}
	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx=sc;
		
	}
	@Override
	public Users getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	public String createProductProperty(){
		System.out.println("creating product prop");
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		System.out.println("sf:"+sf);
		System.out.println("Desc: "+getDensityDescription());
		new ProductDAOImpl(sf).saveProductPropertyData(getDensityDescription(),getProd_prop_select());
		return "success";
	}
	
}
