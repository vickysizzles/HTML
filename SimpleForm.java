package com.tutorialspoint.MyFirstWebPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleForm
 */
@WebServlet("/SimpleForm")
public class SimpleForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SimpleForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String DoBmonth = request.getParameter("DoBmonth");
		String DoBday = request.getParameter("DoBday");
		String DoByear = request.getParameter("DoByear");
		String Male = request.getParameter("Male");
		String Female = request.getParameter("Female");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<html>\n" + "<head>\n" + "<title>\n Form example </title>\n" + "<style>\n"
				+ "body{ background-color:yellow ;text-align:center; font-family:verdana; margin:auto; width:350px} table,tr,td{border:1px solid black }"
				+ "" + "</style>\n" + "</head>\n" + "<body >"
				+ "<h3> User details have been captured successfully!! Below are the details</h3>" + "<table>\n"
				+ "<tr><td><b>First Name :</td></b>" + "<td>" + firstname + "</td>" + "</tr>\n "
				+ "<tr><td><b>Last Name :</b></td>" + "<td>" + lastname + "</td>" + " </tr>\n"
				+ "<tr><td><b>Contact number :</b></td>" + "<td>" +

				number + "<tr><td><b>Email: :</b></td>" + "<td>" +

				email + "</td>" + "</tr>\n " + "<tr><td><b>DOB Month :</b></td>" + "<td>" + DoBmonth + "</td>"
				+ "</tr>\n " + "<tr><td><b>DOB day :</b></td>" + "<td>" + DoBday + "</td>" + "</tr> \n"
				+ "<tr><td><b>DOB year :</b></td>" + "<td>" + DoByear + "</td>" + "</tr> \n"
				+ "<tr><td><b>Gender :</b></td>" + "<td>" + Male + "</td>" + "</tr> \n" + "<tr><td><b>Gender :</b></td>"
				+ "<td>" + Female + "</td>" + "</tr>\n " + "</table>\n" + "</body>" + "</html>");

		doGet(request, response);
	}

}
