package roy.model;
import java.sql.Date;
public class Board {
	private Integer b_num;
	private String b_name;
	private String b_cnt;
	private Date b_date;
	private Integer b_view;
	private Character b_shr;
	private Character b_cmm; 
	private String m_id;
	public Integer getB_num() {
		return b_num;
	}
	public void setB_num(Integer b_num) {
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
	public Integer getB_view() {
		return b_view;
	}
	public void setB_view(Integer b_view) {
		this.b_view = b_view;
	}
	public Character getB_shr() {
		return b_shr;
	}
	public void setB_shr(Character b_shr) {
		this.b_shr = b_shr;
	}
	public Character getB_cmm() {
		return b_cmm;
	}
	public void setB_cmm(Character b_cmm) {
		this.b_cmm = b_cmm;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
}