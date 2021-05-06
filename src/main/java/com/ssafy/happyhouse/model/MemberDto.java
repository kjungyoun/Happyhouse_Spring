package com.ssafy.happyhouse.model;

public class MemberDto {
	private String userid, userpwd, username, email;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public MemberDto() {}
	
	
	public MemberDto(String userid, String userpwd, String username, String email) {
		super();
		this.userid = userid;
		this.userpwd = userpwd;
		this.username = username;
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberDto [userid=" + userid + ", userpwd=" + userpwd + ", username=" + username + ", email=" + email
				+ "]";
	}
	
	
}
