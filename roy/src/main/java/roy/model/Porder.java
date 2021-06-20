package roy.model;
import java.sql.Date;
public class Porder {
	private Integer o_num ;   
    private Date o_date;
    private String o_req;
    //fk
    private Integer p_num; //상품번호
    private String m_id;   //아이디
    
    private Integer o_qty;
    private Integer o_cost;
    private String o_pay;   
    
	
	public String getO_pay() {
		return o_pay;
	}
	public void setO_pay(String o_pay) {
		this.o_pay = o_pay;
	}
	public Integer getO_num() {
		return o_num;
	}
	public void setO_num(Integer o_num) {
		this.o_num = o_num;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	public String getO_req() {
		return o_req;
	}
	public void setO_req(String o_req) {
		this.o_req = o_req;
	}
	public Integer getP_num() {
		return p_num;
	}
	public void setP_num(Integer p_num) {
		this.p_num = p_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public Integer getO_qty() {
		return o_qty;
	}
	public void setO_qty(Integer o_qty) {
		this.o_qty = o_qty;
	}
	public Integer getO_cost() {
		return o_cost;
	}
	public void setO_cost(Integer o_cost) {
		this.o_cost = o_cost;
	}
    
    
}