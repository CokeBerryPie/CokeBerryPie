package aim.member.db;

public class memberDTO {
	
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String nick;
	private String mb_birth1;
	private String mb_birth2;
	private String mb_birth3;
	private String mb_gender;
	private String mb_tel;
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pw() {
		return mb_pw;
	}
	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getMb_birth1() {
		return mb_birth1;
	}
	public void setMb_birth1(String mb_birth1) {
		this.mb_birth1 = mb_birth1;
	}
	public String getMb_birth2() {
		return mb_birth2;
	}
	public void setMb_birth2(String mb_birth2) {
		this.mb_birth2 = mb_birth2;
	}
	public String getMb_birth3() {
		return mb_birth3;
	}
	public void setMb_birth3(String mb_birth3) {
		this.mb_birth3 = mb_birth3;
	}
	public String getMb_gender() {
		return mb_gender;
	}
	public void setMb_gender(String mb_gender) {
		this.mb_gender = mb_gender;
	}
	public String getMb_tel() {
		return mb_tel;
	}
	public void setMb_tel(String mb_tel) {
		this.mb_tel = mb_tel;
	}

	@Override
	public String toString() {
		return "memberDTO [mb_id=" + mb_id + ", mb_pw=" + mb_pw + ", mb_name=" + mb_name + ", nick=" + nick
				+ ", mb_birth1=" + mb_birth1 + ", mb_birth2=" + mb_birth2 + ", mb_birth3=" + mb_birth3 + ", mb_gender="
				+ mb_gender + ", mb_tel=" + mb_tel + "]";
	}
}
