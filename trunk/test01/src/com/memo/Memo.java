package com.memo;



/**
 * Memo entity. @author MyEclipse Persistence Tools
 */

public class Memo  implements java.io.Serializable {


    // Fields    

     private MemoId id;
 	private String topic;
	private String content;
	private String guest;


    // Constructors

    /** default constructor */
    public Memo() {
    }

    
    /** full constructor */
    public Memo(MemoId id) {
        this.id = id;
    }

   
    // Property accessors

    public MemoId getId() {
        return this.id;
    }
    
    public void setId(MemoId id) {
        this.id = id;
    }


	public String getTopic() {
		return topic;
	}


	public void setTopic(String topic) {
		this.topic = topic;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getGuest() {
		return guest;
	}


	public void setGuest(String guest) {
		this.guest = guest;
	}
   








}