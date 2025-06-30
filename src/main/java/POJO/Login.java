package POJO;

public class Login {

	private String Username;
	private String Password;
	private String Authority;
	
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Login(String username, String password) {
		super();
		Username = username;
		Password = password;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAuthority() {
		return Authority;
	}
	public void setAuthority(String authority) {
		Authority = authority;
	}
	@Override
	public String toString() {
		return "Login [Username=" + Username + ", Password=" + Password + ", Authority=" + Authority + "]";
	}
	
}
