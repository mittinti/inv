package com.cusoft.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.cusoft.bean.Users;
import com.cusoft.dao.UsersDAO;

public class UsersDAOImpl implements UsersDAO{
	
	private SessionFactory sf;
	
	public UsersDAOImpl(SessionFactory sf){
		this.sf = sf;
	}


	@Override
	public Users getUserByCredentials(String userName, String passWord) {
		// TODO Auto-generated method stub
		Session session = sf. openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from Users where userName='"+userName+"' and passWord='"+passWord+"'");
		Users user = (Users) query.uniqueResult();
		if (null != user)
			System.out.println("Found user in DB: "+ user);
		
		tx.commit();
		
		session.close();
				
		return user;
	}

}
