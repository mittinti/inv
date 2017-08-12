package com.cusoft.dao.impl;

import com.cusoft.bean.DensityGroup;
import com.cusoft.dao.ProductDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class ProductDAOImpl
  extends ActionSupport
  implements ProductDAO
{
  private static final long serialVersionUID = 1L;
  private SessionFactory sf;
  
  public ProductDAOImpl(SessionFactory sf)
  {
    this.sf = sf;
  }
  
  public void saveProductPropertyData(String denDesc, String tableInto)
  {
    System.out.println("DenDesc: " + denDesc);
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    if (tableInto.equalsIgnoreCase("Density"))
    {
      System.out.println("Yes this is Density");
      DensityGroup den = new DensityGroup();
      den.setDensityDescription(denDesc);
      session.save(den);
    }
    tx.commit();
  }
  
  public List<String> getDensity()
  {
    System.out.println("inside getdesity ()");
    
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    Query query = session.createQuery("select densityId||' | '||densityDescription from DensityGroup");
    @SuppressWarnings("unchecked")
	List <String> densityList = query.list();
    tx.commit();
    session.close();
    return densityList;
  }
  
  public List<String> getFace()
  {
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    Query query = session.createQuery("select faceId||' | '||faceDescription from FaceGroup");
    
    @SuppressWarnings("unchecked")
	List<String> faceList = query.list();
    tx.commit();
    session.close();
    return faceList;
  }
  
  public List<String> getMake()
  {
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    Query query = session.createQuery("select makeId||' | '||makeDescription from MakeGroup");
    @SuppressWarnings("unchecked")
	List<String> makeList = query.list();
    tx.commit();
    session.close();
    return makeList;
  }
  
  public List<String> getMaterial()
  {
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    Query query = session.createQuery("select materialId||' | '||materialDescription from MaterialGroup");
    
    @SuppressWarnings("unchecked")
	List<String> materialList = query.list();
    tx.commit();
    session.close();
    return materialList;
  }
  
  public List<String> getSizegroup()
  {
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    Query query = session.createQuery("select sizeId||' | '||sizeDescription from SizeGroup");
    
    @SuppressWarnings("unchecked")
	List<String> sizeList = query.list();
    tx.commit();
    session.close();
    return sizeList;
  }
  
  public List<String> getThickness()
  {
    Session session = this.sf.openSession();
    Transaction tx = session.beginTransaction();
    Query query = session.createQuery("select thicknessId||' | '||thicknessDescription from ThicknessGroup");
    
    @SuppressWarnings("unchecked")
	List<String> thicknessList = query.list();
    tx.commit();
    session.close();
    return thicknessList;
  }
  public List<String> getUomdata(){
	  Session session = this.sf.openSession();
	    Transaction tx = session.beginTransaction();
	    Query query = session.createQuery("select uomDesc from UOM");
	    @SuppressWarnings("unchecked")
		List<String> uomList = query.list();
	    tx.commit();
	    session.close();
	return uomList;  
  }
}
