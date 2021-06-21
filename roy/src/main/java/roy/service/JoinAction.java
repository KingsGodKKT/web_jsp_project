package roy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import roy.dao.MemberDao;
import roy.model.Rmember;

public class JoinAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String m_id = request.getParameter("m_id");
		String m_pass = request.getParameter("m_pass");
		String m_name = request.getParameter("m_name");
		String m_mail = request.getParameter("m_mail");
		String m_tel = request.getParameter("m_tel");
		String m_addr = request.getParameter("m_addr");
		
		Rmember Rme = new Rmember();
		Rme.setM_id(m_id);
		Rme.setM_pass(m_pass);
		Rme.setM_name(m_name);
		Rme.setM_mail(m_mail);
		Rme.setM_tel(m_tel);
		Rme.setM_addr(m_addr);
		
		MemberDao md = MemberDao.getInstance();
		int result = md.insert(Rme);
		
		request.setAttribute("result", result);
		return "join";
	}

}
