package com.ssafy.happyhouse.model;

public class BaseAddr {
	private String city;
	private String gugun;
	private int dongcode;
	
	public int getDongcode() {
		return dongcode;
	}
	public void setDongcode(int dongcode) {
		this.dongcode = dongcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	
	public BaseAddr(String city, String gugun, int dongcode) {
		super();
		this.city = city;
		this.gugun = gugun;
		this.dongcode = dongcode;
	}
	
	public  BaseAddr() {}
	
	
}
