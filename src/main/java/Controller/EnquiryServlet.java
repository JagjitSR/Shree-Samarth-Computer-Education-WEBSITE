package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import IMPL.EnquiryDaoImpl;
import POJO.Enquiry;

/**
 * Servlet implementation class EnquiryServlet
 */
@WebServlet("/EnquiryServlet")
public class EnquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Enquiry e=null;
	EnquiryDaoImpl edi=new EnquiryDaoImpl();
	String msg,errmsg;
	HttpSession session=null;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnquiryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		

        
        
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
		if(process!=null && process.equals("addEnquiry")) {
			String Name=request.getParameter("name");
			String Contact=request.getParameter("contact");
			String Email=request.getParameter("email");
			String Address=request.getParameter("address");
			String[] CoursesArray=request.getParameterValues("courses");
			String Courses=String.join(", ", CoursesArray);
			String OtherCourses=request.getParameter("other");
			String Completed="NO";
			
			e=new Enquiry(Name,Contact,Email,Address,Courses,OtherCourses,Completed);
			
			boolean flag=edi.AddEnquiry(e);
			if(flag) {
				msg="We will Contact you for your Enquiry :)";
				session.setAttribute("success", msg);
				RequestDispatcher rd=request.getRequestDispatcher("Enquiry.jsp");
				rd.forward(request, response);
			}else {
				errmsg="We couldn't save Enquiry Entry :(";
				session.setAttribute("failed", errmsg);
				RequestDispatcher rd=request.getRequestDispatcher("Enquiry.jsp");
				rd.forward(request, response);
			}
		}
		else if(process!=null && process.equals("updateEnquiry")) {
			
			
		}
		
	}

}
