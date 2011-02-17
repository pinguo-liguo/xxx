package com.memo;



/**
 * MemoId entity. @author MyEclipse Persistence Tools
 */

public class MemoId  implements java.io.Serializable {


    // Fields    

     private String topic;
     private String guest;
     private String content;


    // Constructors

    /** default constructor */
    public MemoId() {
    }

    
    /** full constructor */
    public MemoId(String topic, String guest, String content) {
        this.topic = topic;
        this.guest = guest;
        this.content = content;
    }

   
    // Property accessors

    public String getTopic() {
        return this.topic;
    }
    
    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getGuest() {
        return this.guest;
    }
    
    public void setGuest(String guest) {
        this.guest = guest;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
   



   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof MemoId) ) return false;
		 MemoId castOther = ( MemoId ) other; 
         
		 return ( (this.getTopic()==castOther.getTopic()) || ( this.getTopic()!=null && castOther.getTopic()!=null && this.getTopic().equals(castOther.getTopic()) ) )
 && ( (this.getGuest()==castOther.getGuest()) || ( this.getGuest()!=null && castOther.getGuest()!=null && this.getGuest().equals(castOther.getGuest()) ) )
 && ( (this.getContent()==castOther.getContent()) || ( this.getContent()!=null && castOther.getContent()!=null && this.getContent().equals(castOther.getContent()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getTopic() == null ? 0 : this.getTopic().hashCode() );
         result = 37 * result + ( getGuest() == null ? 0 : this.getGuest().hashCode() );
         result = 37 * result + ( getContent() == null ? 0 : this.getContent().hashCode() );
         return result;
   }   





}