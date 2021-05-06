package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.PageBean;
import com.ssafy.happyhouse.model.PageBean2;
import com.ssafy.happyhouse.model.service.HouseServiceImpl;
import com.ssafy.happyhouse.model.service.MemberServiceImpl;

@WebServlet("/main")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String action = request.getParameter("action");
		System.out.println("action......................................."+action);
		
		String url="index.jsp";
		
		try {
			if(action!=null) {
				if(action.equals("login")) {
					url = login(request, response);
				}else if(action.equals("logout")) {
					url = logout(request, response);
				}else if(action.equals("register")) {
					url = register(request, response);
				}else if(action.equals("mvmypage")) {
					url = "mypage.jsp";
				}else if(action.equals("modify")) {
					url = modifyMember(request, response);
				}else if(action.equals("delete")) {
					url = deleteMember(request, response);
				}else if(action.equals("memberList")) {
					url = memberList(request, response);
				}else if(action.equals("search")) {
					url = search(request,response);
				}else if(action.equals("")) {

				}else if(action.equals("")) {

				}else if(action.equals("")) {

				}else if(action.equals("")) {

				}else if(action.equals("")) {

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			url="error/error.jsp";
		}
		
		System.out.println("url................................................"+url);
		if(url.startsWith("redirect:")) {//경로가 redirect: 로 시작하면     sendRedirect로 이동.
			//redirect:url 이므로     url에서 redirect:를 제거후 이동 
			response.sendRedirect(url.substring(url.indexOf(":")+1));
		}else {//경로가 redirect: 로  시작하지 않으면 기본적으로 forward로 이동.
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

	private String memberList(HttpServletRequest request, HttpServletResponse response) {
		String path = "userAdmin.jsp";
		// &key=&word=
		
		String key = request.getParameter("key");
		String word = request.getParameter("word");
		String pageNo = request.getParameter("pageNo");
		key = key==null? "": key;
		word = word==null? "": word;
		
		PageBean2 bean = new PageBean2(key,word,pageNo);
		
		try {
			List<MemberDto> list = MemberServiceImpl.getMemberService().searchAll(bean);
			
			for (MemberDto mem : list) {
				System.out.println(mem);
			}
			request.setAttribute("bean", bean);
			request.setAttribute("members", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}

	private String deleteMember(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		
		try {
			MemberServiceImpl.getMemberService().deleteMember(memberDto.getUserid());
			session.invalidate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:main";
	}

	private String modifyMember(HttpServletRequest request, HttpServletResponse response) {
		MemberDto memberDto = new MemberDto();
		memberDto.setUserid(request.getParameter("userid"));
		memberDto.setUserpwd(request.getParameter("userpwd"));
		memberDto.setUsername(request.getParameter("username"));
		memberDto.setEmail(request.getParameter("email"));
		
		try {
			MemberServiceImpl.getMemberService().modifyMember(memberDto);
			HttpSession session = request.getSession();
			session.setAttribute("userinfo", memberDto);
		} catch (Exception e) {
			e.printStackTrace();
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out = response.getWriter();
//			out.println("<script>alert("+e.getMessage()+");</script>");
//			out.flush();
		}
		return "redirect:main?action=mvmypage";
	}

	private String register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MemberDto memberDto = new MemberDto();
		memberDto.setUserid(request.getParameter("userid"));
		memberDto.setUserpwd(request.getParameter("userpwd"));
		memberDto.setUsername(request.getParameter("username"));
		memberDto.setEmail(request.getParameter("email"));
		
		try {
			MemberServiceImpl.getMemberService().registerMember(memberDto);
			return "redirect:main";
		} catch (Exception e) {
			e.printStackTrace();
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out = response.getWriter();
//			out.println("<script>alert("+e.getMessage()+");</script>");
//			out.flush();
		}
		return "index.jsp";
	}

	private String logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index.jsp";
	}

	private String login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userid = request.getParameter("userid");
		String userpwd= request.getParameter("userpwd");
		
		String url="index.jsp";
		try {
			MemberDto memberDto = MemberServiceImpl.getMemberService().login(userid, userpwd);
			HttpSession session = request.getSession();
			session.setAttribute("userinfo", memberDto);
		} catch (Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
//			out.println("<script>alert('계정이 등록 되었습니다'); location.href='이동주소';</script>");
			out.println("<script>alert('로그인 오류!!');</script>");
			out.flush();
		}
		return url;
	}
	private String search(HttpServletRequest request, HttpServletResponse response) {
		String path = "houseinfo.jsp";
		String key = request.getParameter("key");
		String word = request.getParameter("word");
		String pageNo = request.getParameter("pageNo");
		
		System.out.println("pageNo>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+pageNo);
		
		PageBean bean = new PageBean(key,word,pageNo);
		request.setAttribute("list", HouseServiceImpl.getHouseService().searchHouse(bean));
		request.setAttribute("bean", bean);
		return path;
		
		
	}

}
