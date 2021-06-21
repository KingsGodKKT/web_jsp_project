package roy.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import roy.model.Board;

import roy.model.ParamObject;

public class BoardDao {
	private static BoardDao instance = new BoardDao();

	private BoardDao() {
	}

	public static BoardDao getInstance() {
		return instance;
	}

	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			// true해야 입력/수정/삭제한 후에 commit실행
			session = ssf.openSession(true);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public int insert(Board board) {
		return session.insert("boardns.insert", board);
	}

	@SuppressWarnings("unchecked")
	public List<Board> list(int startRow, int endRow) {
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		return session.selectList("boardns.main_list", hm);
	}

	public void readcoutUpdate(int b_num) {
		session.update("boardns.readcoutUpdate", b_num);
	}

	public Board select(int b_num) {
		return (Board) session.selectOne("boardns.select", b_num);
	}

	public int update(Board board) {
		return session.update("boardns.update", board);
	}

	public int delete(int b_num) {
		return session.delete("boardns.delete", b_num);
	}

	public int getTotal() {
		return (int) session.selectOne("boardns.getTotal");
	}

	public List<Board> list(String m_id, int startRow, int endRow) {
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		hm.put("m_id", m_id);
		return session.selectList("boardns.list", hm);
	}

	// board
	public List<Board> selectBoardList(String m_id) {
		List<Board> blist = session.selectList("boardns.selectBoardList", m_id);
		System.out.println("blist :" + blist);
		return blist;
	}

	// checkbox 게시물
	public List<Board> selectOrderList(ParamObject paramObject) {
		return session.selectList("boardns.selectOrderList", paramObject);
	}
	

}