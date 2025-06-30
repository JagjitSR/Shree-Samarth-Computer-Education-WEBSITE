package DAO;

import java.util.List;

import POJO.Review;

public interface ReviewDao {
	public boolean AddReview(Review R);
	public List<Review> goodReviews();	
}
