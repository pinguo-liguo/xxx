package com.qwt.action;


import java.io.UnsupportedEncodingException;
import java.util.List;

import bsh.This;

import com.memo.DAO.TestDAO;
import com.qwt.Test;

public class testAction {
	private TestDAO testDAO;
	private	String aa;
	private String bb;
	
	private List<Test> list;
	
	public String inserttest()  {
		Test test=new Test();
		test.setAa(aa);
		test.setBb(bb);
		
		//testDAO.save(test);
		
		//list=testDAO.findAll();
		try{
			String temp=this.getAa();
			byte[] temp1=this.getAa().getBytes("utf-8");
			String temp11=new String(temp1,"gbk");
			System.out.println(temp11);
			
			byte[] temp2=this.getAa().getBytes("utf-8");
			String temp21=new String(temp2,"iso-8859-1");
			byte[] temp23=temp21.getBytes("iso-8859-1");
			String temp22=new String(temp23,"utf-8");
			System.out.println(temp21);
		
		//(String)(list.get(0).getAa().getBytes("ISO-8859-1"),"GBK");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
		return("success");
	}
	public TestDAO getTestDAO() {
		return testDAO;
	}
	public void setTestDAO(TestDAO testDAO) {
		this.testDAO = testDAO;
	}
	public String getAa() {
		return aa;
	}
	public void setAa(String aa) {
		this.aa = aa;
	}
	public String getBb() {
		return bb;
	}
	public void setBb(String bb) {
		this.bb = bb;
	}
	public List<Test> getList() {
		return list;
	}
	public void setList(List<Test> list) {
		this.list = list;
	}

}
