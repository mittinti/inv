package com.cusoft.dao.impl;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.cusoft.bean.DensityGroup;
import com.cusoft.dao.ProductPropertyDAO;
import com.google.gson.Gson;

public class ProductPropertyDAOImpl implements ProductPropertyDAO {

private SessionFactory sf;
	
	public ProductPropertyDAOImpl (SessionFactory sf){
		this.sf = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DensityGroup> getProductPropListData(String productProperty) 
	{
			System.out.println("secondd");
			List<DensityGroup> listData = new LinkedList<DensityGroup>();
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			Query query=session.createQuery("from DensityGroup");
			listData = query.list();
			tx.commit();
			session.close();
			return listData;
	}
	
	public int updateDesc(String table, String column, String id){
			System.out.println("density switch case");
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();		
			System.out.println("update DensityGroup d set d.densityDescription='"+column+"' where d.densityId="+id);
			Query qry = session.createQuery("update DensityGroup d set d.densityDescription='"+column+"' where d.densityId="+id);
			int res = qry.executeUpdate();
			tx.commit();
			session.close();
			System.out.println("Total rows updated: "+res);		
			return res;
	}

}
