package roy.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import roy.model.Manager;

public class ManagerDao {
	
	/*singleton 정의*/
	private static ManagerDao instance = new ManagerDao();
	private ManagerDao() {}
	public static ManagerDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			
			session = ssf.openSession(true);	// true: auto commit, 반드시 기술해야함
			reader.close();
		} catch (Exception e) {
			System.out.println("session 생성에러: "+e.getMessage());
		}
	}
	
	// 로그인 체크
	public Manager select(String mng_id) {
		return (Manager) session.selectOne("managerns.select", mng_id);
	}
	
	
}
