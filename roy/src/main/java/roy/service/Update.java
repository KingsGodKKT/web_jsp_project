package roy.service;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import roy.model.Board;
import roy.dao.BoardDao;
public class Update implements CommandProcess{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		int result = 0;
		// login한 id 가져오기
		HttpSession session = request.getSession();
		String m_id = (String)session.getAttribute("m_id");
		String real = request.getSession().getServletContext().getRealPath("/upload"); //upload한 파일 저장소
		int maxSize = 1024 * 1024 * 10; // 파일 최대 10M
		MultipartRequest mr = null;
		try {
			mr = new MultipartRequest(request, real, maxSize,"utf-8",new DefaultFileRenamePolicy());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		String pageNum  = mr.getParameter("pageNum");
		String filename = mr.getFilesystemName("filename");  // 파일명
		String content = mr.getParameter("content"); // 내용
		String subject = mr.getParameter("subject"); // 제목
		String cs_open = mr.getParameter("cs_open");
		int num = Integer.parseInt(mr.getParameter("num"));
		// board객체를 생성하고 화면에서 입력한 값 세팅
		Board board = new Board();
		board.setB_num(num);
		board.setF_name(filename);
		board.setB_cnt(content);
		board.setB_name(subject);
		board.setM_id(m_id);
		board.setB_shr(cs_open);
		// DB에 입력 시키기
		BoardDao bd = BoardDao.getInstance();
		result = bd.update(board);	
	//	System.out.println("result="+result);

		//jsp에 결과를 전달 하겠다
		request.setAttribute("pageNum", pageNum);	
		request.setAttribute("result", result);	
		return "/board/boardupdate";
	}
}