package com.cusoft.action;

import com.cusoft.dao.ProductDAO;
import com.cusoft.dao.impl.ProductDAOImpl;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

public class AjaxAction
  extends ActionSupport
  implements ServletContextAware
{
  private static final long serialVersionUID = 1L;
  private ServletContext ctx;
  public String getMat() {
	return mat;
}

public void setMat(String mat) {
	this.mat = mat;
}

public String getFace() {
	return face;
}

public void setFace(String face) {
	this.face = face;
}

public String getThick() {
	return thick;
}

public void setThick(String thick) {
	this.thick = thick;
}

public String getSize() {
	return size;
}

public void setSize(String size) {
	this.size = size;
}

public ArrayList<String> getMatArray() {
	return matArray;
}

public void setMatArray(ArrayList<String> matArray) {
	this.matArray = matArray;
}

public ArrayList<String> getFaceArray() {
	return faceArray;
}

public void setFaceArray(ArrayList<String> faceArray) {
	this.faceArray = faceArray;
}

public ArrayList<String> getThickArray() {
	return thickArray;
}

public void setThickArray(ArrayList<String> thickArray) {
	this.thickArray = thickArray;
}

public ArrayList<String> getSizeArray() {
	return sizeArray;
}

public void setSizeArray(ArrayList<String> sizeArray) {
	this.sizeArray = sizeArray;
}

ArrayList<String> descArray = new ArrayList<String>();
  private String desc;
  ArrayList<String> makeArray = new ArrayList<String>();
  
  private String mat;
  private String face;
  private String thick;
  private String size;
  
  ArrayList<String> matArray = new ArrayList<String>();
  ArrayList<String> faceArray = new ArrayList<String>();
  ArrayList<String> thickArray = new ArrayList<String>();
  ArrayList<String> sizeArray = new ArrayList<String>();
  public ArrayList<String> getUomArray() {
	return uomArray;
}

public void setUomArray(ArrayList<String> uomArray) {
	this.uomArray = uomArray;
}

ArrayList<String> uomArray = new ArrayList<String>();
  
  public ArrayList<String> getMakeArray() {
	return makeArray;
}

public void setMakeArray(ArrayList<String> makeArray) {
	this.makeArray = makeArray;
}

public String getMake() {
	return make;
}

public void setMake(String make) {
	this.make = make;
}

private String make;
  
  public ArrayList<String> getDescArray()
  {
    return this.descArray;
  }
  
  public void setDescArray(ArrayList<String> descArray)
  {
    this.descArray = descArray;
  }
  
  public String getDesc()
  {
    return this.desc;
  }
  
  public void setDesc(String desc)
  {
    this.desc = desc;
  }
  
  public String execute()
  {
    SessionFactory sf = (SessionFactory)this.ctx.getAttribute("SessionFactory");
    ProductDAO product = new ProductDAOImpl(sf);
    List<String> densityList = product.getDensity();
    List<String> makeList = product.getMake();
    List<String> faceList = product.getFace();
    List<String> materialList = product.getMaterial();
    List<String> thickList = product.getThickness();
    List<String> sizeList = product.getSizegroup();
    List<String> uomList = product.getUomdata();
    
    for (int i = 0; i < densityList.size(); i++) {
      this.descArray.add(densityList.get(i));
    }
    for (int i = 0; i < makeList.size(); i++) {
        this.makeArray.add(makeList.get(i));
      }
    for (int i = 0; i < faceList.size(); i++) {
        this.faceArray.add(faceList.get(i));
      }
    for (int i = 0; i < materialList.size(); i++) {
        this.matArray.add(materialList.get(i));
      }
    for (int i = 0; i < thickList.size(); i++) {
        this.thickArray.add(thickList.get(i));
      }
    for (int i = 0; i < sizeList.size(); i++) {
        this.sizeArray.add(sizeList.get(i));
      }
    for (int i = 0; i < uomList.size(); i++) {
        this.uomArray.add(uomList.get(i));
      }
    System.out.println("Size of Density List is : " + densityList.size());
    System.out.println("Density List is : " + this.descArray);
    
    System.out.println("Size of Make List is : " + makeList.size());
    System.out.println("Make List is : " + this.makeArray);
    return "success";
  }
  
  public void setServletContext(ServletContext sc)
  {
    this.ctx = sc;
  }
}