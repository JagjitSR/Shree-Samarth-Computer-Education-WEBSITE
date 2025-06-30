package POJO;

public class Enquiry {
	private int eId;
	private String eName;
	private String eContact;
	private String eEmail;
	private String eAddress;
	private String eCourses;
	private String eOther;
	private String eCompleted;
	
	public Enquiry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Enquiry(String eName, String eContact, String eEmail, String eAddress, String courses, String eOther) {
		super();
		this.eName = eName;
		this.eContact = eContact;
		this.eEmail = eEmail;
		this.eAddress = eAddress;
		this.eCourses = courses;
		this.eOther = eOther;
	}

	public Enquiry(String eName, String eContact, String eEmail, String eAddress, String eCourses, String eOther,
			String eCompleted) {
		super();
		this.eName = eName;
		this.eContact = eContact;
		this.eEmail = eEmail;
		this.eAddress = eAddress;
		this.eCourses = eCourses;
		this.eOther = eOther;
		this.eCompleted = eCompleted;
	}

	public int geteId() {
		return eId;
	}

	public void seteId(int eId) {
		this.eId = eId;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String geteContact() {
		return eContact;
	}

	public void seteContact(String eContact) {
		this.eContact = eContact;
	}

	public String geteEmail() {
		return eEmail;
	}

	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}

	public String geteAddress() {
		return eAddress;
	}

	public void seteAddress(String eAddress) {
		this.eAddress = eAddress;
	}

	public String geteCourses() {
		return eCourses;
	}

	public void seteCourses(String eCourses) {
		this.eCourses = eCourses;
	}

	public String geteOther() {
		return eOther;
	}

	public void seteOther(String eOther) {
		this.eOther = eOther;
	}

	public String geteCompleted() {
		return eCompleted;
	}

	public void seteCompleted(String eCompleted) {
		this.eCompleted = eCompleted;
	}

	@Override
	public String toString() {
		return "Enquiry [eId=" + eId + ", eName=" + eName + ", eContact=" + eContact + ", eEmail=" + eEmail
				+ ", eAddress=" + eAddress + ", eCourses=" + eCourses + ", eOther=" + eOther + ", eCompleted="
				+ eCompleted + "]";
	}	
	
}
