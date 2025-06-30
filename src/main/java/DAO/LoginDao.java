package DAO;

import POJO.Login;

public interface LoginDao {
	
	public boolean login(String LUser, String LPass);
	public boolean changePassword(String LUser, String LPass);
	public String findAuthority(String LUser);	
}
