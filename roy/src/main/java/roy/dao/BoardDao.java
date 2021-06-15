package roy.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import roy.model.Board;
import roy.model.ParamObject;

public class BoardDao {
	
	/*singleton 정의*/
	private static BoardDao instance = new BoardDao();
	private BoardDao() {}
	public static BoardDao getInstance() {
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
	
	//board
		public List<Board> selectBoardList() {
			 List<Board> blist = session.selectList("boardns.selectBoardList");
		     System.out.println("blist :" + blist);
		     return blist;
		}
		//checkbox 게시물
		public List<Board> selectOrderList(ParamObject paramObject) {
		    return session.selectList("boardns.selectOrderList", paramObject);
		}
}
