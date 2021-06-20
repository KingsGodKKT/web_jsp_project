package roy.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import roy.dao.BoardDao;
import roy.dao.OrderDao;
import roy.dao.ProductDao;
import roy.model.Board;
import roy.model.ParamObject;
import roy.model.Porder;
import roy.model.Product;

public class BuyCheck implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {}
		
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		
		OrderDao od = OrderDao.getInstance();		
		od.update(p_num);
		int result = od.update(p_num);
		request.setAttribute("result", result);

		return "buycheck";
	
	}

}
