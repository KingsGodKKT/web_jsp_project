package roy.model;
import java.sql.Date;
public class Bcomment {
	private Integer c_num;
	private String c_cnt;
	private Date  c_date;
	private Integer b_num;
	private String m_id;
	public Integer getC_num() {
		return c_num;
	}
	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}
	public String getC_cnt() {
		return c_cnt;
	}
	public void setC_cnt(String c_cnt) {
		this.c_cnt = c_cnt;
	}
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	public Integer getB_num() {
		return b_num;
	}
	public void setB_num(Integer b_num) {
		this.b_num = b_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
}