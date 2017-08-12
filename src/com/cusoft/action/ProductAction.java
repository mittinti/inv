package com.cusoft.action;

import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;
import com.cusoft.bean.Users;
import com.cusoft.dao.ProductDAO;
import com.cusoft.dao.impl.ProductDAOImpl;
import com.google.gson.Gson;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProductAction extends ActionSupport implements Action,
		ModelDriven<Users>, ServletContextAware, ServletRequestAware,
		SessionAware {

	private static final long serialVersionUID = 1L;

	private ServletContext ctx;
	private String densityjson;
	private javax.servlet.http.HttpServletRequest request;

	public javax.servlet.http.HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(javax.servlet.http.HttpServletRequest request) {
		this.request = request;
	}

	public String getDensityjson() {
		return densityjson;
	}

	public void setDensityjson(String densityjson) {
		this.densityjson = densityjson;
	}

	public String getDensityData() {
		System.out.println("Density method");
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		ProductDAO product = new ProductDAOImpl(sf);
		List<String> densityList = product.getDensity();
		Gson gson = new Gson();
		densityjson = gson.toJson(densityList);
		System.out.println("JSON: " + densityjson);
		return "success";
	}

	/*public Object toJSON(Object src) {
		Gson gson = new Gson();
		System.out.println("JSON: " + gson.toJson(src));
		return gson.toJson(src);
	}
/*
	public String getProductPropertyData() {
		System.out.println("in CLASS PROP");
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
//		ProductDAO product = new ProductDAOImpl(sf);
		String productProp = request.getParameter("type");
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();

		switch (productProp) {
		case "Make": {
			String query_val = getText("MAKE_MAX_REC");
			Query q = session.createQuery(query_val);
			@SuppressWarnings("rawtypes")
			List dataList = q.list();
			tx.commit();
			session.close();
			toJSON(dataList);
			break;
		}
		case "Material": {
			String query_val = getText("MATERIAL_MAX_REC");
			Query q = session.createQuery(query_val);
			@SuppressWarnings("rawtypes")
			List dataList = q.list();
			tx.commit();
			session.close();
			toJSON(dataList);
			break;
		}
		case "Density": {
			System.out.println("In Desnsity");
			String query_val = getText("DENSITY_MAX_REC");
			System.out.println(query_val);
			Query q = session.createQuery(query_val);
			@SuppressWarnings("rawtypes")
			List dataList = q.list();
			tx.commit();
			session.close();
			toJSON(dataList);
			break;
		}
		case "Thickness": {
			String query_val = getText("THICKNESS_MAX_REC");
			Query q = session.createQuery(query_val);
			@SuppressWarnings("rawtypes")
			List dataList = q.list();
			tx.commit();
			session.close();
			toJSON(dataList);
			break;
		}
		case "Facing": {
			String query_val = getText("FACE_MAX_REC");
			Query q = session.createQuery(query_val);
			@SuppressWarnings("rawtypes")
			List dataList = q.list();
			tx.commit();
			session.close();
			toJSON(dataList);
			break;
		}
		case "Size": {
			String query_val = getText("MAKE_MAX_REC");
			Query q = session.createQuery(query_val);
			@SuppressWarnings("rawtypes")
			List dataList = q.list();
			tx.commit();
			session.close();
			toJSON(dataList);
			break;
		}
		default:
			break;
		}

		return "success";
	}*/

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx = sc;
	}

	@Override
	public Users getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}

}
