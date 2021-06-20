package roy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class DeleteForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		String pageNum= request.getParameter("pageNum");
		
		request.setAttribute("b_num", b_num);
		request.setAttribute("pageNum", pageNum);
		return "/board/deleteForm";
	}
}