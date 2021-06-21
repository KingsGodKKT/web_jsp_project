package roy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		//String id = (String)session.getAttribute("id");
		//System.out.println("logout 1 id = "+id);
		//session.removeAttribute("id");
		//id = (String)session.getAttribute("id");
		//System.out.println("logout 2 id = "+id);
		return "menber/logout";
		
	}
}
