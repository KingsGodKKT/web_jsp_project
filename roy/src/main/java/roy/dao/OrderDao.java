package roy.dao;

import java.io.Reader;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import roy.model.Porder;


public class OrderDao {
	// singleton
	private static OrderDao instance = new OrderDao();
	private OrderDao() { }
	public static OrderDao getInstance() {
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
	
	
	public int insert(Porder porder) {
		int result = 0;
		result = session.insert("porderns.insert", porder);
		//session.commit();		
		return result;
	}
}
