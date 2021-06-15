package roy.service;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ProductInsertForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Calendar date1 = Calendar.getInstance();
		Calendar max_date1 = Calendar.getInstance();
		
		max_date1.set(Calendar.DAY_OF_MONTH, 21);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 		
		Date date = date1.getTime();
		Date max_date = max_date1.getTime();
		
		request.setAttribute("date",sdf.format(date));
		request.setAttribute("max_date", sdf.format(max_date));
		return "productInsertForm";
	}

}
