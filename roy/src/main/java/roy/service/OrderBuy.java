package roy.service;


import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import roy.dao.BoardDao;
import roy.dao.MemberDao;
import roy.dao.ProductDao;
import roy.model.Board;
import roy.model.ParamObject;
import roy.model.Porder;
import roy.model.Product;
import roy.model.Rmember;

public class OrderBuy implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {}
		
		
		//Productview 게시물 선택 한 값(b_num) 받아오기
		String[] oboard =request.getParameterValues("oboard") ;
		Integer o_qty = Integer.parseInt(request.getParameter("o_qty"));
		Integer p_cost  = Integer.parseInt(request.getParameter("p_cost"));
		Integer p_num =  Integer.parseInt(request.getParameter("p_num"));
		String m_id =  request.getParameter("m_id");
		String p_name =  request.getParameter("p_name");
		String o_req =  request.getParameter("o_req");
		
		Date o_date = new Date(System.currentTimeMillis());//현재시간을 가져와 Date형으로 저장한다
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String str = null;
		if(oboard != null) {
		str = "(";
	    int i=0;
	    for( String select_id : oboard){
	       str += select_id;
	       if( i != oboard.length -1){
	           str += ",";
	        }
	          i++;
	      }
	    str += ")";
		}
	    
	    
		//System.out.println(str);
		Integer o_cost = o_qty * p_cost;
		
		//for(String i : oboard)System.out.println("oboard:" +i);
//		System.out.println("o_qty:" +o_qty);
		//System.out.println("p_cost: " + p_cost);
		//System.out.println("p_num: " + p_num);
		//System.out.println("o_date: " + o_date);
		//아직 로그인 안되어있어서 값 null
//		System.out.println("m_id: " + m_id);
		
		
		ProductDao pi = ProductDao.getInstance();
		Product product = pi.getDetail(p_num);
		BoardDao bi = BoardDao.getInstance();
		Porder porder = new Porder();
		//주문자 정보
		MemberDao md = MemberDao.getInstance();
		
		
		ParamObject paramObject = new ParamObject();
		paramObject.setString(str);
		
		List<Board> olist= bi.selectOrderList(paramObject);
		List<Rmember> omlist = md.selectOMemberList(m_id);
		System.out.println("omlist" + omlist);
		
		
		porder.setO_qty(o_qty);
		porder.setO_cost(o_cost);
		porder.setO_date(o_date);
		porder.setO_req(o_req);
		porder.setP_num(p_num);
		porder.setM_id(m_id);
		
		request.setAttribute("omlist", omlist);
		request.setAttribute("olist", olist);
		request.setAttribute("porder", porder);
		request.setAttribute("product", product);
		
		//List<Product> list = pd.selectList();
		//List<Board> olist = bi.selectOrderList();
		//System.out.println("olist:" + olist);
		
		
		return "../order/orderbuy";
	}

}
