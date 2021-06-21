package roy.service;
import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import roy.dao.BoardDao;
import roy.model.Board;
public class InsertBoard implements CommandProcess{

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// login한 id 가져오기
		HttpSession session = request.getSession();
		String m_id = (String)session.getAttribute("m_id");
		String real = request.getSession().getServletContext().getRealPath("/upload"); //upload한 파일 저장소
		int maxSize = 1024 * 1024 * 10; // 파일 최대 10M
		try {
			// 화면에서 넣은 파일 제목, 내용 받아오기
			MultipartRequest mr = new MultipartRequest(request, real, maxSize,
				"utf-8",new DefaultFileRenamePolicy());
			String fileName = mr.getFilesystemName("file");  // 파일명
			String board_content = mr.getParameter("board_content"); // 내용
			String board_subject = mr.getParameter("board_subject"); // 제목
			String cs_open = mr.getParameter("cs_open");

			// board객체를 생성하고 화면에서 입력한 값 세팅
			Board board = new Board();
			board.setF_name(fileName);
			board.setB_name(board_subject);
			board.setM_id(m_id);
			board.setB_cnt(board_content);
			board.setB_shr(cs_open);
			// DB에 입력 시키기
			BoardDao bd = BoardDao.getInstance();
			int result = bd.insert(board);
			//jsp에 결과를 전달 하겠다
			request.setAttribute("result", result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "/board/insertBoard";
	}

}
