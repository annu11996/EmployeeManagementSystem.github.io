package com.Emp;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmpDetail
 */
public class EmpDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String emp_id = request.getParameter("emp_id");
		Connection con = null;
		Statement stmt= null;
		ResultSet rs = null;
		
		String user="system";
		String pwd="root";
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		
		out.print("<h1>Display the record</h1>");
		out.print("<table border='1'><tr><th>emp_id</th><th>firstname</th><th>lastname</th><th>dob</th><th>Status</th><th>gender</th><th>phoneno</th><th>address</th><th>email</th></tr>");
		
		
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con  = DriverManager.getConnection(url,user,pwd);
			stmt=(Statement) con.createStatement();
			String sql="select * from emp where emp_id="+emp_id+"";
			rs = ((java.sql.Statement) stmt).executeQuery(sql);
			
			while(rs.next())
			{
				out.print("<tr>");
				out.print("<td>");
				out.print(rs.getString(1));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(2));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(3));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(4));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(5));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(6));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(7));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(8));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(9));
				out.print("</td>");
				out.print("</tr>");
				
				
			}//end of while
		}
		catch(Exception e){
			System.out.println(e);
		}
		
		out.print("</table>");

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
