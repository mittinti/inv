package com.cusoft.action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.cusoft.bean.*;
import com.cusoft.dao.ProductPropertyDAO;
import com.cusoft.dao.impl.ProductPropertyDAOImpl;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class PropertyListDataAction extends ActionSupport implements Action, ServletContextAware{

	private static final long serialVersionUID = 1L;
	
	
	
	private ServletContext ctx;
	private List<DensityGroup> data;
	

	public List<DensityGroup> getData() {
		return data;
	}

	public void setData(List<DensityGroup> data) {
		this.data = data;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
			
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		ProductPropertyDAO pdao = new ProductPropertyDAOImpl(sf);
		List<DensityGroup> dg = pdao.getProductPropListData("Density");
		
		List<DensityGroup> list = new ArrayList<DensityGroup>();
		System.out.println("SIZE is: "+dg.size());
		
		for (int i = 0; i < dg.size(); i++) {
			DensityGroup denpojo = new DensityGroup();
			denpojo.setDensityId(dg.get(i).getDensityId());
			denpojo.setDensityDescription(dg.get(i).getDensityDescription());
	        list.add(denpojo);
		}
		data = list;
		System.out.println(data);
		return "success";
		}
	
	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx=sc;
		
	}
}

