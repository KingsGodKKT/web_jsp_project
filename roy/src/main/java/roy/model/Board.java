package roy.model;

import java.sql.Date;

public class Board {
	
	private int b_num;
	private String b_name;
	private String b_cnt;
	private Date b_date;
	private int b_view;
	private String b_shr;
	private String m_id;
	private String f_name;
	
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_cnt() {
		return b_cnt;
	}
	public void setB_cnt(String b_cnt) {
		this.b_cnt = b_cnt;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public int getB_view() {
		return b_view;
	}
	public void setB_view(int b_view) {
		this.b_view = b_view;
	}
	public String getB_shr() {
		return b_shr;
	}
	public void setB_shr(String b_shr) {
		this.b_shr = b_shr;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
}