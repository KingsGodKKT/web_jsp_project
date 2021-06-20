package roy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import roy.dao.BoardDao;
import roy.model.Board;

public class ViewAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		String pageNum = request.getParameter("pageNum");
		BoardDao bd = BoardDao.getInstance();
		bd.readcoutUpdate(b_num); // 조회수 증가 
		Board board = bd.select(b_num); 
		request.setAttribute("board", board);
		request.setAttribute("pageNum", pageNum);
		return "/board/boardview";
	}

}

