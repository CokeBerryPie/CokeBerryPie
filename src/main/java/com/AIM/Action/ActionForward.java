package com.AIM.Action;

public class ActionForward {

	private String path;	
	private boolean isRedirect;	
	
	
	public ActionForward() {
		System.out.println(" 페이지 이동 준비 (티켓준비)");
	}
	
	// alt shift s + r    => set(),get()
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() { //get()기능
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

}
