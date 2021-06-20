package roy.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import roy.model.Board;
import roy.dao.BoardDao;
public class UpdateForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		String pageNum= request.getParameter("pageNum");
		BoardDao bd = BoardDao.getInstance();
		Board board = bd.select(b_num);

		request.setAttribute("board", board);
		request.setAttribute("pageNum", pageNum);
		return "/board/boardupdateForm";
	}

}
