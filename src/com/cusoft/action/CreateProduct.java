package com.cusoft.action;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.cusoft.bean.Product;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

public class CreateProduct extends ActionSupport implements Action,ModelDriven<Product>, ServletContextAware{
	
	private static final long serialVersionUID = 1L;
	
	private ServletContext ctx;
	private Product product = new Product();
	private String productMaterialId;
	
	@RequiredStringValidator(message = "Enter your MAT ID.")
	public String getProductMaterialId() {
		return productMaterialId;
	}


	public void setProductMaterialId(String productMaterialId) {
		this.productMaterialId = productMaterialId;
	}


	public String execute(){
		System.out.println("Going to create a product in DB");
		System.out.println(product.getProductMaterialId().split(" | ")[0]);
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		Session session = sf.openSession();
	    Transaction tx = session.beginTransaction();
		Product prod = new Product();
		prod.setProductMaterialId(product.getProductMaterialId().split(" | ")[0]);
		prod.setProductDensityId(product.getProductDensityId().split(" | ")[0]);
		prod.setProductThicknessId(product.getProductThicknessId().split(" | ")[0]);
		prod.setProductFaceId(product.getProductFaceId().split(" | ")[0]);
		prod.setProductSizeId(product.getProductSizeId().split(" | ")[0]);
		prod.setProductMakeId(product.getProductMakeId().split(" | ")[0]);
		prod.setProductStandards(product.getProductStandards());
		prod.setProductFUOM(product.getProductFUOM());
		prod.setProductSUOM(product.getProductSUOM());
		prod.setProductConvfactor(product.getProductConvfactor());
		prod.setProductSaleAmount(product.getProductSaleAmount());
		prod.setProductTaxCode(product.getProductTaxCode());
		prod.setProductMinStockQty(product.getProductMinStockQty());
		prod.setProductDesc(product.getProductDesc());
		session.save(prod);
		tx.commit();
		System.out.println("Created a product successfully");
		// I am not setting the created and modified timestamps here coz String ArrayList
		return "success";
	}
	
	
	@Override
	public void setServletContext(ServletContext sc) {
		// TODO Auto-generated method stub
		this.ctx = sc;
		
	}

	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		return product;
	}

}
