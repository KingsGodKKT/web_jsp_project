package roy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardInsertForm implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		return "boardInsertForm";
	}

}
