package roy;
import java.sql.Date;
public class Member {
	private String m_id;
	private String m_pass;
	private String m_name;
	private String m_addr;
	private String m_tel;
	private Date m_date;
	private String m_del;	
	
	public String getDel() {	return m_del;	}
	public void setDel(String del) {	this.m_del = del;	}
	public String getId() {		return m_id;	}
	public void setId(String id) {	this.m_id = id;	}

	public String getPassword() {
		return m_pass;
	}
	public void setPassword(String password) {
		this.m_pass = password;
	}
	public String getName() {	return m_name;	}
	public void setName(String name) {	this.m_name = name;	}
	public String getAddress() {	return m_addr;	}
	public void setAddress(String address) {
		this.m_addr = address;
	}
	public String getTel() {	return m_tel;	}
	public void setTel(String tel) {	this.m_tel = tel;	}
	public Date getReg_date() {	return m_date;	}
	public void setReg_date(Date reg_date) {
		this.m_date = m_date;
	}	
}