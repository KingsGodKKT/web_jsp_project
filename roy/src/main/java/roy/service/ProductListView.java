package roy.service;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import roy.dao.ProductDao;
import roy.model.Product;

public class ProductListView implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		
		
		ProductDao pd = ProductDao.getInstance();		
		List<Product> list = pd.selectList();
		
		request.setAttribute("list", list);

		return "../product/productlistview";
	}
}
