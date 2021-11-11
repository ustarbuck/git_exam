package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

public class boardWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//데이터
		
		 String subject = request.getParameter("subject"); //writeform에서 받아와서 변수에 넣어
		 String content = request.getParameter("content");
		
		//디비
		 HttpSession sssion = request.getSession(); //세션만들기
		 
		 boardDTO.setId("hong"); //걍 갖다박아
		boardDTO.setName("Hong-GilDong");
		boardDTO.setEmail("hong@naver.com");
		boardDTO.setSubject(subject); //받아서 디티오에 넣어
		 boardDTO.setContent(content);
		 
		 
		//응답
		return null;
	}

}
