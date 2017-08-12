package com.cusoft.service;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;
import com.cusoft.bean.*;

public class ProductPropertyService extends ActionSupport {

	private SessionFactory sf;

	public ProductPropertyService(SessionFactory sf){
		this.sf = sf;
	}
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unchecked")
	public List<DensityGroup> getListData(){
		System.out.println("secondd");
		List<DensityGroup> listData = new LinkedList<DensityGroup>();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Query query=session.createQuery("from DensityGroup");
		listData = (List<DensityGroup>) query.list();
		System.out.println(listData);
		tx.commit();
		session.close();
		//System.out.println(listData);
		return listData;
			
	}

}
