package com.Aeontel.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class Member
 */
@WebServlet("/Member.do")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Member() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		String op = request.getParameter("op");
		System.out.println(op);
		PrintWriter pw = response.getWriter();
		MemberDAO memberDAO = null;
		HttpSession session = request.getSession();
		if( op.equals("joinMember")){
			JSONObject returndata = new JSONObject();
			String memberID = request.getParameter("memberID");
			String passwd = request.getParameter("passwd");
			String memeberName = request.getParameter("memeberName");
			String memeberBrithDay = request.getParameter("memeberBrithDay");
			String sex = request.getParameter("sex");
			String tel1 = request.getParameter("tel1");
			String tel2 = null;
			try {
				tel2 = request.getParameter("tel2");
			} catch (Exception e) {
				tel2 = "";
			}
			
			if( tel2 == null ) tel2 = "";
			String zipCode = request.getParameter("zipCode");
			String address1 = request.getParameter("address1");
			String address2 = request.getParameter("address2");
			String address3 = request.getParameter("address3");
			String address4 = request.getParameter("address4");
			String email = request.getParameter("email");
			
			MemberVO vo = new MemberVO(memberID, passwd, memeberName, memeberBrithDay, sex, tel1, tel2, zipCode, address1, address2, address3, address4, email);
			memberDAO = new MemberDAO();
			boolean insert = memberDAO.insertMember(vo); 
			
			if( insert ){
				returndata.put("success", "success");
			} else {
				returndata.put("success", "f");
			}
			pw.print(returndata);
		} else if( op.equals("duplicate")){
			String memberID = request.getParameter("memberID");
			memberDAO = new MemberDAO();
			boolean check = memberDAO.duplicateID(memberID);
			if( check ){
				pw.print("ok");
			} else {
				pw.print("no");
			}
		} else if( op.equals("loginCheck")){
			System.out.println(session.getAttribute("id"));
			if( session.getAttribute("id") != null ){
				pw.print("Y");
			} else {
				pw.print("N");
			}
		} else if( op.equals("login")){
			memberDAO = new MemberDAO();
			String memberID = request.getParameter("memberID");
			String memberPW = request.getParameter("memberPW");
			
			if(memberDAO.login(memberID, memberPW)){
				session.setAttribute("login", "Y");
				session.setAttribute("id", memberID);
				pw.print("<script>alert('로그인이 완료 되었습니다.');window.location.href='/Aeontel/';</script>");
			} else {
				pw.print("<script>alert('로그인이 실패하였습니다.');window.history.back();</script>");
			}
		} else if( op.equals("logout")){
			session.invalidate();
		}
		
		pw.flush();
		pw.close();
	}

}
