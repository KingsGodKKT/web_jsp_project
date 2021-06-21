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

public class LoginCheck implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		String m_id = request.getParameter("m_id");
		String m_pass = request.getParameter("m_pass");
		
		MemberDao md = MemberDao.getInstance();		
		String dbpass = md.loginChk(m_id);
		int result = 0;
		
		if (m_pass.equals(dbpass)) { result = 1;}
		else result = 0;
	
		System.out.println("result" + result);
		request.setAttribute("result", result);
	
		
		if (result == 1) {
			request.setAttribute("m_id", m_id);
			HttpSession session = request.getSession();
			session.setAttribute("m_id", m_id);
		} else {
			request.setAttribute("result", result);
		}
		return "login";
	}
}
