package org.lanqiao.entity;

public class Login {
	private int id;
	private String uname;
	private String upassword;
	
	public Login() {
		
	}
	public Login( String uname, String upassword) {
		this.uname = uname;
		this.upassword = upassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	
}
