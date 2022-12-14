package com.AIM.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AIM.member.db.memberDAO;
import com.AIM.member.db.memberDTO;

public class MemberJoinAction implements Action {

		@Override
		public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			System.out.println("MemberJoinAction_execute 호출");
			
			memberDTO dto = new memberDTO();
			dto.setMb_id(request.getParameter("mb_id"));
			dto.setMb_name(request.getParameter("mb_name"));
			dto.setMb_pw(request.getParameter("mb_pw"));
			dto.setMb_birth(request.getParameter("mb_birth"));
			dto.setMb_nick(request.getParameter("mb_nick"));
			dto.setMb_gender(request.getParameter("gender"));
			dto.setMb_tel(request.getParameter("mb_tel"));
		    dto.setMb_grade(Integer.parseInt(request.getParameter("grade")));
			dto.setMb_pay(Integer.parseInt(request.getParameter("pay")));
			dto.setMb_view(Integer.parseInt(request.getParameter("view")));
			
			String[] birthArr = request.getParameterValues("mb_birth");
			
			if(birthArr != null) {
				dto.setMb_birth(birthArr[0]+"-"+birthArr[1]+"-"+birthArr[2]);
			}
			
			memberDAO dao = new memberDAO();
			dao.memberjoin(dto);
			
			ActionForward forward = new ActionForward();
			forward.setPath("./MemberLogin.aim");
			forward.setRedirect(true);
			
			return forward;
		}
}
