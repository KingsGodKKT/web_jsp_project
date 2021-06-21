package roy.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


import roy.dao.MemberDao;
import roy.dao.ProductDao;
import roy.model.Product;
import roy.model.Rmember;

public class Confirm implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
		}
		String m_id = request.getParameter("m_id");
		// 핸들링 영역인 Dao 내 객체 생성 to connect
		MemberDao md = MemberDao.getInstance();
		// 핸들링 영역인 Dao 내 id를 기준으로 수식하는 IdConfirm 메소드 만들고 이를 int result에 저장
		int result = md.IdChk(m_id);

		request.setAttribute("result", result);
		request.setAttribute("m_id", m_id);
		return "confirm";
	}
}
