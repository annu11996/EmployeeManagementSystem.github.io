package com.Emp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactUsForm
 */
public class ContactUsForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServletRequest request;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String State=request.getParameter("State");
	String subject=request.getParameter("subject");
	
	
	
	String url="jdbc:oracle:thin:@localhost:1521:XE";
	String uname="system";
	String pwd="root";
	Connection con=null;

	private ServletResponse response;
	try {
		//step1 register driver
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//get the connection
		con=DriverManager.getConnection(url,uname,pwd);
		//create statement 
		PreparedStatement pstmt=con.prepareStatement("insert into emp values(?,?,?,?)");
		pstmt.setString(1,firstname);
		pstmt.setString(2,lastname);
		pstmt.setString(3,State);
		pstmt.setString(4,subject);
		
		//execute query
		if(pstmt.executeUpdate()>0) {
			System.out.println("submitted succesfully");
			response.setContentType("text/html");
			response.getWriter().print("<h1>submitted succesfully</h1>");
		}else {
			System.out.println("message not submitted");
			response.setContentType("text/html");
			response.getWriter().print("<h1>message not submitted</h1>");
		}
	} catch (ClassNotFoundException e1) {
		System.out.println("Cant find Driver class");
	}catch (SQLException e11) {
		e1.printStackTrace();
	}catch (Exception e) {
		e1.printStackTrace();
	}finally {
		if(con!=null) {
			try {
				con.close();
			} catch (Exception e2) {
				System.out.println("Close error");
			}
		}
	}//finally end
}//doPost end

}
