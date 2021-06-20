package roy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import roy.dao.BoardDao;
public class Delete implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		String pageNum= request.getParameter("pageNum");
		BoardDao bd = BoardDao.getInstance(); 
		int result  = bd.delete(b_num);	
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("result", result);
		return "/board/delete";
	}

}