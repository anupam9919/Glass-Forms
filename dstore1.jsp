<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang en="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
	alert("Your form has been submitted successfully");
	location.replace("glassform.html");
  </script>
<title></title>
</head>
<body>
<h1>Your form has been submitted successfully....</h1>
<%
	String rname=request.getParameter("name");
	int roll = Integer.parseInt(request.getParameter("roll_no"));
	String uemail = request.getParameter("email");
	int uphone = Integer.parseInt(request.getParameter("phone"));
	String sec = request.getParameter("Section");
	String lang =request.getParameter("language");
	String date =request.getParameter("submit_date");
	String des= request.getParameter("description");
	
		Connection con;
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:","huntsman","alpha");
		PreparedStatement st=con.prepareStatement("insert into surveyr values(?,?,?,?,?,?,?,?)");
		st.setString(1,rname);
		st.setInt(2,roll);
		st.setString(3,uemail);
		st.setInt(4,uphone);
		st.setString(5,sec);
		st.setString(6,date);
		st.setString(7,lang);
		st.setString(8,des);
		System.out.println(st);
		int rs = st.executeUpdate();
		System.out.println(rs+" lines effected");
		out.println("Name is "+rname);
  		out.println("roll is "+roll);
  		out.println("email is "+uemail);
 		out.println("phone is "+uphone);
  		out.println("sec is "+sec);
  		out.println("lang is "+lang);
  		out.println("date is "+date);
  		out.println("msg is "+des);
		con.close();
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
%>
</body>
</html>