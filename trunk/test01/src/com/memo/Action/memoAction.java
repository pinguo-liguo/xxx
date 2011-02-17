/**
 * 
 */
package com.memo.Action;

import com.memo.*;
import com.memo.DAO.MemoDAO;

/**
 * @author zhou
 *
 */

public class memoAction {
	private MemoDAO memodao;
	private String username;
	private String password;

	public String text(){
		MemoId memoid = new MemoId(this.getUsername(),this.getPassword(),"abcd");
		Memo memo = new Memo(memoid);
		memo.setTopic(this.getUsername());
		memo.setGuest(this.getPassword());
		this.getMemodao().save(memo);
		return "success";
	}
	
	public MemoDAO getMemodao() {
		return memodao;
	}

	public void setMemodao(MemoDAO memodao) {
		this.memodao = memodao;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
