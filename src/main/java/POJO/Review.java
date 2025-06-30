package POJO;

public class Review {
	private int rId;
	private String rName;
	private String rContact;
	private String rEmail;
	private String rMessage;
	private int rRating;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Review(String rName, String rContact, String rEmail, String rMessage, int rRating) {
		super();
		this.rName = rName;
		this.rContact = rContact;
		this.rEmail = rEmail;
		this.rMessage = rMessage;
		this.rRating = rRating;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrContact() {
		return rContact;
	}

	public void setrContact(String rContact) {
		this.rContact = rContact;
	}

	public String getrEmail() {
		return rEmail;
	}

	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}

	public String getrMessage() {
		return rMessage;
	}

	public void setrMessage(String rMessage) {
		this.rMessage = rMessage;
	}

	public int getrRating() {
		return rRating;
	}

	public void setrRating(int rRating) {
		this.rRating = rRating;
	}

	@Override
	public String toString() {
		return "Review [rId=" + rId + ", rName=" + rName + ", rContact=" + rContact + ", rEmail=" + rEmail
				+ ", rRating=" + rRating + "]";
	}

}
