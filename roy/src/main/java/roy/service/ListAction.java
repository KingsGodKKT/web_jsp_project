package roy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import roy.dao.BoardDao;
import roy.model.Board;

public class ListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		String m_id = (String)session.getAttribute("m_id"); 
		final int ROW_PER_PAGE = 4;
		final int PAGE_PER_BLOCK = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		BoardDao bd = BoardDao.getInstance();
		int total = bd.getTotal();  						
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		int endRow = startRow + ROW_PER_PAGE - 1;
		List<Board> list = bd.list(m_id,startRow, endRow);
		int number = total - startRow + 1;
		int totalPage = (int)Math.ceil((double)total/ROW_PER_PAGE);	
		int startPage = currentPage - (currentPage - 1)%PAGE_PER_BLOCK;
		int endPage = startPage + PAGE_PER_BLOCK - 1;
		if (endPage > totalPage) endPage = totalPage;
		
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("number", number);
		request.setAttribute("list", list);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		return "boardList";
	}

} 