package com.cusoft.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import javax.servlet.ServletContext;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

import com.cusoft.bean.Users;
import com.cusoft.dao.UsersDAO;
import com.cusoft.dao.impl.UsersDAOImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements Action,ModelDriven<Users>, ServletContextAware, SessionAware{
	
	private static final long serialVersionUID = 1L;
	private ServletContext ctx;
	private Users user = new Users(); 
	
	@Override
	public String execute() throws Exception {
			System.out.println(user.getUserName());
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		UsersDAO usersDAO = new UsersDAOImpl(sf);
		Users userDB = usersDAO.getUserByCredentials(user.getUserName(), user.getPassWord());
		
		if (null == userDB){
			System.out.println("User login failed");
			return "error";
		}
		{
			System.out.println("User login success");
			sess.put("userName", user.getUserName());
			sess.put("isLoggedin", true);
			return "success";
		}
	
	}
	
	public String logout(){
		
		if(null != sess)
			sess.invalidate();
		return "success";
		
	}

	@Override
	public Users getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx = sc;
		
	}

	
	private SessionMap<String,Object> sess;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		sess = (SessionMap<String, Object>) session;
	}  
	
	

}
