package com.cusoft.action;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

import com.cusoft.dao.ProductPropertyDAO;
import com.cusoft.dao.impl.ProductPropertyDAOImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateProductProperty extends ActionSupport implements Action, ServletContextAware {

	private String type;
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	private String desc;
	private String id;
	private static final long serialVersionUID = 1L;

	private ServletContext ctx;
	
	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx=sc;
		
	}
	
	public void updateDesc(){
		System.out.println(type+" "+desc+" "+id);
		if (type == null || desc == null || id == null || 
				"".equalsIgnoreCase(type) || "".equalsIgnoreCase(desc) || "".equalsIgnoreCase(id) ||
				type.equalsIgnoreCase("null") || desc.equalsIgnoreCase("null") || id.equalsIgnoreCase("null"))
		{
		System.out.println("dont joke");
			return;
		}
		else if(null!= id){
			SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
			ProductPropertyDAO pdao = new ProductPropertyDAOImpl(sf);
			pdao.updateDesc(type, desc, id);	
		}
		else
			System.out.println("Stop joking");
			return;
		
	}

}
