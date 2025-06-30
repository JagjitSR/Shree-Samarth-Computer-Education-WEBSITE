package IMPL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DAO.ReviewDao;
import POJO.Review;
import UTIL.DBUtil;

public class ReviewDaoImpl implements ReviewDao{

	@Override
	public boolean AddReview(Review R) {
		Connection con=DBUtil.getConnect();		
		String sql="insert into Review (Rname,Rcontact,Remail,Rmessage,Rrating) values (?,?,?,?,?)";
		try {
			if(con!=null) {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, R.getrName());
			ps.setString(2, R.getrContact());
			ps.setString(3, R.getrEmail());
			ps.setString(4, R.getrMessage());
			ps.setInt(5, R.getrRating());
			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Review> goodReviews() {
		List<Review> l=new ArrayList<Review>();
		Connection con=DBUtil.getConnect();
		String sql="select * from Review where Rrating>=3";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Review r=new Review();
				r.setrId(rs.getInt("Rid"));
				r.setrName(rs.getString("Rname"));
				r.setrContact(rs.getString("Rcontact"));
				r.setrEmail(rs.getString("Remail"));
				r.setrMessage(rs.getString("Rmessage"));
				r.setrRating(rs.getInt("Rrating"));
				l.add(r);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return l;
	}

}
