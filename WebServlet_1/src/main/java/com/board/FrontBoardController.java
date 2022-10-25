package com.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(description = "게시판 컨트롤러입니다", 
			urlPatterns = { "/Board" })
//매핑이란 주소를 적으면 서블릿파일과 연결하겠다.
public class FrontBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
    	//GET 방식의 요청이나 POST 방식의 요청을 doProcess 함수가 처리
    	//method라는 parameter로 요청방식을 파악할 수있다.
    	System.out.println("클라이언트 요청 방식 : " + method);
    	
    	//1. 한글처리
    	
    	//2. 요청받기
    	
    	//3. 요청판단 (판단의 기준 : cmd = value >> command 방식)
    	//3.1 http://192.168.0.26:8090/WebServlet_1/Board?cmd=login&id=kglim&pwd=1004 요청
    	//3.2 cmd 값을 가지고 판단 업무 > 로그인 처리 > id, pwd 값을 받아서.....
    	//http://192.168.0.26:8090/WebServlet_1/Board?cmd=list .... 게시판 목록 보여주세요.
    	
    	//4. 결과저장 (request, session, application)
    	//application : 웹 xml 접근하느것들
    	//session : 로그인 정보
    	//request : 내페이지 모든정보인데 내페이지만 사용가능할걸 해결하는게 include, forward이다.
    	
    	//5. view 지정
    	
    	//6. View 에게 데이터 전달 (forward)
    	
    	
    	request.setCharacterEncoding("UTF-8");
    	
    	String cmd = request.getParameter("cmd");
    	
    	String viewpage = null;
    	
    	//cmd > null > error.jsp
    	//cmd > boardlist > list.jsp
    	//cmd > boardwrite > write.jsp 서비스 .....
    	
    	if(cmd == null) {
    		viewpage = "/error/error.jsp";
    	}else if(cmd.equals("boardlist")){
    		//실제 코드
    		/*
    		 DB 연결 > select > 객체 담기 .....
    		 boardDao dao = new boardDao();
    		 List<board> boardlist = dao.selectBoardList();
    		 request.setAttribute("list", boardlist);
    		 forward > view > jsp > request.getAttribute("list");
    		 화면에 출력
    		 */
    		viewpage = "/board/boardlist.jsp";
    	}else if(cmd.equals("boardwrite")){
    		
    		viewpage = "/board/boardwrite.jsp";
    	}else if(cmd.equals("boarddelete")){
    		viewpage = "/board/boarddelete.jsp";
    	}else if(cmd.equals("login")){
    		viewpage = "/WEB-INF/views/login/login.jsp"; // 실무적인 코드
    	}else {
    		viewpage = "/error/error.jsp";
    	}
    	
    	//결과저장
    	//List<Emp> emplist = new ArrayList<>();
    	//request.setAttribute("list",boardlist);
    	
    	//view 지정
    	RequestDispatcher dis = request.getRequestDispatcher(viewpage);
    	
    	//view 에게 데이터 전달 (forward)
    	dis.forward(request, response);
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//같은 로직
    	doProcess(request, response, "GET");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//같은 로직
		doProcess(request, response,"POST");
	}

}
