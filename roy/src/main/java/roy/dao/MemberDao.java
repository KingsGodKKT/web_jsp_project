package roy.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import roy.model.Product;
import roy.model.Rmember;

public class MemberDao {
	private static MemberDao instance = new MemberDao();

	private MemberDao() {
	}

	public static MemberDao getInstance() {
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

	public String loginChk(String m_id) {
		return (String) session.selectOne("rmemberns.loginChk", m_id);
	}

	public String login(String m_id) {
		return (String) session.selectOne("rmemberns.login", m_id);
	}

	public int IdChk(String m_id) {
		int result = 0;
		String str = (String) session.selectOne("rmemberns.IdChk", m_id);
		if (str != null) {
			result = 1;
		}
		return result;
	}

	public int insert(Rmember rme) {
		int result = 0;
		result = session.insert("rmemberns.insert", rme);
		return result;
	}
	public List<Rmember> selectOMemberList(String m_id) {
        List<Rmember> omlist = session.selectList("rmemberns.selectOMemberList",m_id);
        System.out.println("omlist :" + omlist);
        return omlist;
    }
}