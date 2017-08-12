package com.cusoft.dao.impl;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.cusoft.bean.UOM;
import com.cusoft.dao.UOMDao;

public class UOMDaoImpl implements UOMDao {
	

private SessionFactory sf;
	
	public UOMDaoImpl (SessionFactory sf){
		this.sf = sf;
	}
	
	@SuppressWarnings("finally")
	public String adduom(String uomCode, String uomDesc, String remarks){
	
	System.out.println("start of uom add");
	Session session = sf.openSession();
	Transaction tx = session.beginTransaction();		
	UOM uom = new UOM();
	uom.setUomId(uomCode);
	uom.setUomDesc(uomDesc);
	uom.setRemarks(remarks);
	// the below logic will bring the primary key value of the last inserted record
	  String result = "";
	    try {
	        Serializable ser = session.save(uom);
	        if (ser != null) {
	            result = (String) ser;
	        }
	        tx.commit();
	    } catch (Exception e) {
	    	result="";
	        e.printStackTrace();
	    }
	    finally{
	    	System.out.println("Status: "+result);
		    session.close();
		    return result;
	    }
	  }
}
