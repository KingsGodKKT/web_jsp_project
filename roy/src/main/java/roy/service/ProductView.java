package roy.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import roy.dao.BoardDao;
import roy.dao.ProductDao;
import roy.model.Board;
import roy.model.Product;

public class ProductView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		
		
//		System.out.println("product List Detail...\n");
		
		int p_num = Integer.parseInt(request.getParameter("p_num"));

		String m_id = request.getParameter("m_id");
		
		System.out.println("session : " + m_id);
		
		
		ProductDao pi = ProductDao.getInstance();
		Product product = pi.getDetail(p_num);
		
		//System.out.println("product:" + product);
		
		BoardDao bi = BoardDao.getInstance();
		List<Board> blist= bi.selectBoardList(m_id);
		
		//System.out.println("blist :" + blist);
	
		request.setAttribute("product", product);
		request.setAttribute("blist", blist);
		
		return "productview";
	}

}
