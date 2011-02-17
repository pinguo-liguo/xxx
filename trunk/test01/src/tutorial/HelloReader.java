package tutorial;
import com.opensymphony.xwork2.ActionSupport;
public class HelloReader extends ActionSupport{
	public static final String MESSAGE="Hello Reader ! I'm from struts 2";
	public String execute() throws Exception{
		setMessage(MESSAGE);
		return SUCCESS;
	}
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
