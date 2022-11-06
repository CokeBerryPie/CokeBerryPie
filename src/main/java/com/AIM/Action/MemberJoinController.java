package com.AIM.Action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AIM.Action.Action;
import com.AIM.Action.ActionForward;
public class MemberJoinController extends HttpServlet{

   protected void doProcess(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
               System.out.println("doProcess 호출");
               
            // 가상주소 계산
               String requestURI = request.getRequestURI();
               System.out.println(" C : requestURI : " +requestURI);
               String ctxPath = request.getContextPath();
               System.out.println(" C : ctxPath : " +ctxPath);
               String command = requestURI.substring(ctxPath.length());
               System.out.println(" C : command : " +command);
               
               System.out.println(" C : 가상주소 계산 끝 ");
               
               // 여러번 사용할 수 있게 전역변수(?) 만들어줌
               Action action = null;
               ActionForward forward = null;
            
               // 가상주소 매핑
               if(command.equals("/MemberJoin.aim")) {
                  System.out.println(" C : /MemberJoin.aim 호출");
                     
                  forward = new ActionForward();
                  forward.setPath("./member/join.jsp");
                  forward.setRedirect(false);
               }
               else if(command.equals("/MemberJoinAction.aim")) {
                  System.out.println(" C : /MemberJoinAction.me 호출");
                  
                  // MemberJoinAction() 객체
                  action = new MemberJoinAction();
                  
                  try {
                     System.out.println(" C : MemberJoinAction 객체생성 후 excute()호출완료");
                  forward = action.execute(request, response);
                  System.out.println(" C : 페이지이동 " + forward);
               } catch (Exception e) {
                  e.printStackTrace();
               }
               }
               
                  // 페이지 이동
                  // response - true
                  // forward - false
                  if(forward != null) {
                  if(forward.isRedirect()) { // true
                     System.out.println(" C : sendRedirect() : " + forward.getPath());
                     response.sendRedirect(forward.getPath());
                  }else { // false
                     System.out.println(" C : forward() : " + forward.getPath());
                     RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
                     dis.forward(request, response);
                     
                  }
                  System.out.println(" C : 페이지 이동 끝 ");
               }
            
}
         @Override
         protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doProcess(request, response);
         }

         @Override
         protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doProcess(request, response);
         }
    }
   
      