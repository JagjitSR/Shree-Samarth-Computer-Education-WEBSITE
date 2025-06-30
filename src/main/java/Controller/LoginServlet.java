package Controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import IMPL.LoginDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	boolean flag;
	String login,msg,errmsg;
	LoginDaoImpl ldi=new LoginDaoImpl();
	HttpSession session=null;
	RequestDispatcher rd=null;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		session=request.getSession();
		String process=request.getParameter("process");
		if(process!=null && process.equals("logIn")) {
			String Username=request.getParameter("username");
			String Password=request.getParameter("password");
			flag=ldi.login(Username, Password);
			if(flag) {
				String authority=ldi.findAuthority(Username);
				session.setAttribute("login", authority);
				msg=("Welcome "+Username);
				session.setAttribute("success", msg);
				rd=request.getRequestDispatcher("LoginPage.jsp");
				rd.forward(request, response); 
			}else {
				String StudentID=request.getParameter("studentId");
				if(StudentID!=null) {
					session.setAttribute("login", "STUD");
					msg="Welcome";
					session.setAttribute("success", msg);
					rd=request.getRequestDispatcher("Student.jsp");
					rd.forward(request, response); 
				}else {
					errmsg="Failed to LOGIN";
					session.setAttribute("failed", errmsg);
					rd=request.getRequestDispatcher("LoginPage.jsp");
					rd.forward(request, response); 	
				}
			}
		}
		else if(process!=null && process.equals("logOut")) {
			session.removeAttribute("login");
			msg="Logged Out Successfully";
			session.setAttribute("success", msg);
			rd=request.getRequestDispatcher("LoginPage.jsp");
			rd.forward(request, response);
		}
		
	}

}
