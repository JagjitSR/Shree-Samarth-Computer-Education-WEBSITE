package IMPL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import DAO.LoginDao;
import UTIL.DBUtil;

public class LoginDaoImpl implements LoginDao {

	@Override
	public boolean login(String LUser, String LPass) {
		Connection con=DBUtil.getConnect();
		String sql="select * from Login where LUsername=?";
		try 
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, LUser);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				String pass=rs.getString("LPassword");
				if(pass.equals(LPass))
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean changePassword(String LUser, String LPass) {
		Connection con=DBUtil.getConnect();
		String sql="update Login set LPassword=? where LUsername=?";
		try 
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, LUser);
			ps.setString(2, LPass);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public String findAuthority(String LUser) {
		Connection con=DBUtil.getConnect();
		String sql="select * from Login where LUsername=?";
		String Auth;
		try 
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, LUser);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				Auth=rs.getString("Authority");
				return Auth;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
