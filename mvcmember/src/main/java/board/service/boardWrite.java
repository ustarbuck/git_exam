package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

public class boardWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//������
		
		 String subject = request.getParameter("subject"); //writeform���� �޾ƿͼ� ������ �־�
		 String content = request.getParameter("content");
		
		//���
		 HttpSession sssion = request.getSession(); //���Ǹ����
		 
		 boardDTO.setId("hong"); //�� ���ٹھ�
		boardDTO.setName("Hong-GilDong");
		boardDTO.setEmail("hong@naver.com");
		boardDTO.setSubject(subject); //�޾Ƽ� ��Ƽ���� �־�
		 boardDTO.setContent(content);
		 
		 
		//����
		return null;
	}

}
