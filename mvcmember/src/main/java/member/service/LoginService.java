package member.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import member.dao.MemberDAO;

public class LoginService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//�뜲�씠�꽣
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//DB
		MemberDAO memberDAO = MemberDAO.getInstance();
		String name = memberDAO.login(id, pwd);
		
		//�쓳�떟
		if(name==null) {
			return "/member/loginFail.jsp";
		}else {
			//荑좏궎
			/*
			Cookie cookie = new Cookie("memName", name); //荑좏궎 �깮�꽦
			cookie.setMaxAge(30*60);//珥� �떒�쐞 - 30遺�
			
			//setPath()瑜� 吏��젙 �븞�빐�룄 �떆媛꾩쓣 3000�쑝濡� �뒛由щ땲源� �릺�꽮??!!
			//cookie.setPath("/"); - 留뚯빟 URL瑜� /member/濡� 吏��젙�븯硫� member�뤃�뜑濡� 荑좏궎 �쟾�넚�빐�씪
			response.addCookie(cookie); //�겢�씪�씠�뼵�듃濡� 蹂대궡湲�
			
			Cookie cookie2 = new Cookie("memId", id); //荑좏궎 �깮�꽦
			cookie2.setMaxAge(30*60);//珥� �떒�쐞
			//cookie2.setPath("/");
			response.addCookie(cookie2); //�겢�씪�씠�뼵�듃濡� 蹂대궡湲�
			*/
			
			//�꽭�뀡
			HttpSession session = request.getSession(); //�꽭�뀡 �깮�꽦
			session.setAttribute("memName", name);
			session.setAttribute("memId", id);
			session.setAttribute("memEmail", email);
			
			return "/member/loginOk.jsp";
		}
	}

}


























