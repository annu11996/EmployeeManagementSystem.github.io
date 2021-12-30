package com.Emp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Servlet implementation class NewEmp
 */
public class NewEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String emp_id=request.getParameter("emp_id");
			String firstname=request.getParameter("firstname");
			String lastname=request.getParameter("lastname");
			String dob=request.getParameter("dob");
			String Status=request.getParameter("Status");
			String gender=request.getParameter("gender");
			String phoneno=request.getParameter("phoneno");
			String address=request.getParameter("address");
			String email=request.getParameter("email");
			
			//add to database
			/*
			  create table StudentName(
			  	name varchar2(50)
			  	
			  );
			   */
			String url="jdbc:oracle:thin:@localhost:1521:XE";
			String uname="system";
			String pwd="root";
			Connection con=null;
			try {
				//step1 register driver
				Class.forName("oracle.jdbc.driver.OracleDriver");
				//get the connection
				con=DriverManager.getConnection(url,uname,pwd);
				//create statement 
				PreparedStatement pstmt=con.prepareStatement("insert into emp values(?,?,?,?,?,?,?,?,?)");
				pstmt.setString(1,emp_id);
				pstmt.setString(2,firstname);
				pstmt.setString(3,lastname);
				pstmt.setString(4,dob);
				pstmt.setString(5,Status);
				pstmt.setString(6,gender);
				pstmt.setString(7,phoneno);
				pstmt.setString(8,address);
				pstmt.setString(9,email);
				//execute query
				if(pstmt.executeUpdate()>0) {
					System.out.println("Emp added...");
					response.setContentType("text/html");
					response.getWriter().print("<h1>Emp added</h1>");
				}else {
					System.out.println("Emp not added...");
					response.setContentType("text/html");
					response.getWriter().print("<h1>Emp Not added</h1>");
				}
			} catch (ClassNotFoundException e) {
				System.out.println("Cant find Driver class");
			}catch (SQLException e) {
				e.printStackTrace();
			}catch (Exception e) {
				e.printStackTrace();
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