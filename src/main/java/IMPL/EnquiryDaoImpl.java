package IMPL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DAO.EnquiryDao;
import POJO.Enquiry;
import UTIL.DBUtil;

public class EnquiryDaoImpl implements EnquiryDao{

	@Override
	public boolean AddEnquiry(Enquiry E) {
		Connection con=DBUtil.getConnect();		
		String sql="insert into Enquiry (Ename,Econtact,Eemail,Eaddress,Ecourses,Eother,Ecompleted) values (?,?,?,?,?,?,?)";
		try {
			if(con!=null) {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, E.geteName());
			ps.setString(2, E.geteContact());
			ps.setString(3, E.geteEmail());
			ps.setString(4, E.geteAddress());
			ps.setString(5, E.geteCourses());
			ps.setString(6, E.geteOther());
			ps.setString(7, E.geteCompleted());
			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
			}
		} catch(SQLException e) {
			System.out.println("Only Admin/Staff can Add/Update/Delete Courses");
			System.out.println("------------------------------");
		}
		return false;
	}
	
}
