package roy.model;
import java.sql.Date;
public class Product {
	 private Integer p_num;   
	 private String p_name;    
	 private Integer p_cost;   
	 private Integer p_qty;   
	 private String p_size;   
	 private String p_cov;
	 private String p_img;
	 private Date p_date;
	 
	public Integer getP_num() {
		return p_num;
	}
	public void setP_num(Integer p_num) {
		this.p_num = p_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public Integer getP_cost() {
		return p_cost;
	}
	public void setP_cost(Integer p_cost) {
		this.p_cost = p_cost;
	}
	public Integer getP_qty() {
		return p_qty;
	}
	public void setP_qty(Integer p_qty) {
		this.p_qty = p_qty;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public String getP_cov() {
		return p_cov;
	}
	public void setP_cov(String p_cov) {
		this.p_cov = p_cov;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	
	 
	
}