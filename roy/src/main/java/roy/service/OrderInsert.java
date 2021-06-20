package roy.service;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import roy.dao.OrderDao;
import roy.model.Porder;


public class OrderInsert implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	
		String d_name 		= request.getParameter("d_name");
		String d_tel 		= request.getParameter("d_tel");
		String d_addr 		= request.getParameter("d_addr");
		
		
		String 	o_req 	= request.getParameter("o_req");
		Integer	p_num 	= Integer.parseInt(request.getParameter("p_num"));
		//아이디 데이터베이스 받아서 넣기
		String 	m_id	= "k1";
		Integer	o_qty	= Integer.parseInt(request.getParameter("o_qty"));
		Integer	o_cost	= Integer.parseInt(request.getParameter("o_cost"));
		String	o_pay	= "N";   
				
		
		System.out.println("o req :" + o_req);
		System.out.println("p num :" + p_num);
		System.out.println("m id :" +  m_id);
		System.out.println("o_qty :" + o_qty);
		System.out.println("o_cost :" + o_cost);
		System.out.println("o_pay :" + o_pay);
		
		
		
		OrderDao od  = OrderDao.getInstance();
		Porder oInfo = new Porder();
		
		//oInfo.setO_num(null);
		oInfo.setO_req(o_req);
		//oInfo.setO_date(null);
		oInfo.setP_num(p_num);
		oInfo.setM_id(m_id);
		oInfo.setO_qty(o_qty);
		oInfo.setO_cost(o_cost);
		oInfo.setO_pay(o_pay);

		int result = od.insert(oInfo);	
		
		System.out.println("insert result = " + result + "\n");
		
		request.setAttribute("result", result);
		
		return "../order/orderInsert";
	}

}
