package com.AIM.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AIM.member.db.memberDAO;

public class MemberIdCheck implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
			    System.out.println(" M : MemberIdCheckAction_execute() ");
			 
			    String userid = request.getParameter("userid");
			
			    System.out.println(" M : userid : " + userid);
			
			    memberDAO dao = new memberDAO();
			
			    int result = dao.memberIdChecㄴk(userid);
			
			    if (result == 1) {
			      System.out.println(" M : 아이디 사용 가능 " );
			    } else {
			      System.out.println(" M : 아이디 사용 불가능 " );
			    } 
			    
			    request.setAttribute("result", Integer.valueOf(result));
			   
			    ActionForward forward = new ActionForward();
			    
			    forward.setPath("./member/idCheck.jsp?inputID=" + userid);
			    forward.setRedirect(false);
			    return forward;
			  }
			}

		
		return null;
	}

}
