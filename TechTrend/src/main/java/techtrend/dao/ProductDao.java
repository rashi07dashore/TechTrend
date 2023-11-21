package techtrend.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import techtrend.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addProduct(Product product) {
		this.hibernateTemplate.save(product);
		
	}

	public Product getProductById(String id) {
		Product product= this.hibernateTemplate.get(Product.class, id);
		return product;
	}

	public List<Product> getAllProducts() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	@Transactional
	public void deleteProduct(String id) {
		Product product1 = this.hibernateTemplate.get(Product.class, id);
		this.hibernateTemplate.delete(product1);
		//this delete method does not returns anything 
		
	}
	public HibernateTemplate getHibernateTemplate()
	{
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
