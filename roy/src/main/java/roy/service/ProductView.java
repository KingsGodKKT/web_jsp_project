package roy.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		ProductDao pi = ProductDao.getInstance();
		Product product = pi.getDetail(p_num);
		
		System.out.println("product:" + product);
		
		BoardDao bi = BoardDao.getInstance();
		List<Board> blist= bi.selectBoardList();
		
		System.out.println("blist :" + blist);
	
		request.setAttribute("product", product);
		request.setAttribute("blist", blist);
		
		return "productview";
	}

}
