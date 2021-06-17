package roy.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import roy.model.Product;


public class ProductDao {
	// singleton
	private static ProductDao instance = new ProductDao();
	private ProductDao() { }
	public static ProductDao getInstance() {
		return instance;
	}
	
	
	//Session 생성 DB 연결
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		} catch (Exception e) {
			System.out.println("Product Session 생성 : " + e.getMessage());
		}
	}
	public int insert(Product product) {
		int result = 0;
		result = session.insert("productns.insert", product);
		//session.commit();		
		return result;
	}
	
	
	public List<Product> selectList() {
        List<Product> list = session.selectList("productns.selectList");
        System.out.println("list :" + list);
        return list;
    }

	public Product getDetail(int p_num) {
		return (Product) session.selectOne("productns.getDetail", p_num);
	}
}
