package roy.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import roy.dao.ProductDao;
import roy.model.Product;

public class ProductInsert implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {}
		
		/*HttpSession session = request.getSession();
		String id = session.getId();
		
		if (id == null)*/
		String	id = "master";
		
		String fileSave = "/fileSave";		
		int max = 1024 * 1024 * 10;	
		
		String real = request.getSession().getServletContext().getRealPath(fileSave);		
	//	System.out.println("real = " + real);
		
		MultipartRequest mr = null;
		try {
			mr = new MultipartRequest(request, real, max, "utf-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			System.out.println("file error : " + e.getMessage());
		}
		
		int    p_num		= Integer.parseInt(mr.getParameter("p_num"));
		String p_name 		= mr.getParameter("p_name");
		int    p_cost 		= Integer.parseInt(mr.getParameter("p_cost"));
		int	   p_qty 		= Integer.parseInt(mr.getParameter("p_qty"));
		String p_size		= mr.getParameter("p_size");
		String p_cov		= mr.getParameter("p_cov");
		Date   p_date 		= Date.valueOf(mr.getParameter("p_date"));
				
		
		
		ProductDao pd = ProductDao.getInstance();
		Product pInfo = new Product();
		
		String p_img = mr.getFilesystemName("p_img");
		
		pInfo.setP_num(p_num);
		pInfo.setP_name(p_name);
		pInfo.setP_cost(p_cost);
		pInfo.setP_qty(p_qty);
		pInfo.setP_size(p_size);
		pInfo.setP_cov(p_cov);
		pInfo.setP_date(p_date);
		pInfo.setP_img(p_img);
		
		/*
		 * System.out.println(pInfo.getP_cov()); System.out.println(pInfo.getP_img());
		 * System.out.println(pInfo.getP_name()); System.out.println(pInfo.getP_size());
		 * System.out.println(pInfo.getP_cost()); System.out.println(pInfo.getP_date());
		 * System.out.println(pInfo.getP_num()); System.out.println(pInfo.getP_qty());
		 */
		
//		int p_num2  = pd.selectMax();		
//		System.out.println("p_num = " + p_num + "\n");
		
				
//		System.out.println("filename = " + p_image);
		
		//String p_image = p_num + "_" + filename; 
		
//		File   file     = new File(real+"/"+ p_image);
		
		//String final_filename = p_num+"_"+filename;
		
//		int result1 = pd.updateImgName(p_num, p_img);
		
		//System.out.println("full filename = " + real+"/"+p_num+"_"+filename);

		
		int result = pd.insert(pInfo);	
		System.out.println("insert result = " + result + "\n");
		request.setAttribute("result", result);
		
		return "productInsert";
	}

}
