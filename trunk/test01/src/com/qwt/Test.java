package com.qwt;



/**
 * Test entity. @author MyEclipse Persistence Tools
 */

public class Test implements java.io.Serializable {

	// Fields

	private long id;
	private String aa;
	private String bb;

	// Constructors

	/** default constructor */
	public Test() {
	}

	/** full constructor */
	public Test(String aa, String bb) {
		this.aa = aa;
		this.bb = bb;
	}

	// Property accessors

	

	public String getAa() {
		return this.aa;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setAa(String aa) {
		this.aa = aa;
	}

	public String getBb() {
		return this.bb;
	}

	public void setBb(String bb) {
		this.bb = bb;
	}

}