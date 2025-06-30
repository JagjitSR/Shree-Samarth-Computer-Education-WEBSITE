package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import IMPL.ReviewDaoImpl;
import POJO.Review;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Review r=null;
	ReviewDaoImpl rdi=new ReviewDaoImpl();
	String msg,errmsg;
	List<Review> list=null;
	HttpSession session=null;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String process = request.getParameter("process");
		if ("goodReviews".equals(process)) {
		    List<Review> list = rdi.goodReviews();
		    request.setAttribute("list", list);
		    RequestDispatcher rd = request.getRequestDispatcher("Reviews.jsp");
		    rd.include(request, response); // Use include for embedding
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//PrintWriter out=response.getWriter();
		session=request.getSession();
		String process=request.getParameter("process");
		if(process!=null && process.equals("addReview")) {
			String Name=request.getParameter("name");
			String Contact=request.getParameter("contact");
			String Email=request.getParameter("email");
			String Message=request.getParameter("message");
			String RatingStr = request.getParameter("rating");  // not getParameterValues
			int Rating = Integer.parseInt(RatingStr);
			
			r=new Review(Name,Contact,Email,Message,Rating);
			boolean flag=rdi.AddReview(r);
			if(flag) {
				msg="Thank you for your Review :)";
				session.setAttribute("success", msg);
				RequestDispatcher rd=request.getRequestDispatcher("Review.jsp");
				rd.forward(request, response);
			}else {
				errmsg="We couldn't save Review :(";
				session.setAttribute("failed", errmsg);
				RequestDispatcher rd=request.getRequestDispatcher("Review.jsp");
				rd.forward(request, response);
			}
		}
	}

}
