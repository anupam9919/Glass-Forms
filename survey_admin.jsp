<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
  pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang=en >

  <head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="surveyform.css">
    <link rel="stylesheet" type="text/css"
      href="/Users/shreyansh/Documents/Development/bootstrap/css/bootstrap.min.css">
    <script src="surveyform.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Form Analytics</title>
  </head>

  <body>
    <h1 id=>Form Analytics</h1>
    <br>
    <br>
    <tbody>
      <div class="table-responsive">
        <table class="table">
        <table width="100%" border="3" >
        <tr>
		    <table,th,tr  border:1px solid black>
          <th scope="col">Name</th>
          <th scope="col">University Roll no</th>
          <th scope="col">Email</th>
          <th scope="col">Phone Number</th>
          <th scope="col">Section</th>
          <th scope="col">Date of Submission</th>
          <th scope="col">Language Used</th>
          <th scope="col">Project Description</th>
          <% 
          
          Connection con; 
          Statement st; 
          ResultSet rs; 
          String sql="select * from surveyr" ;
           try 
           {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:","huntsman","alpha");
            st=con.createStatement(); rs=st.executeQuery(sql); %>
            <% while(rs.next()) 
            { 
              %>
              <tr>
                <td>
                  <%out.println(rs.getString(1));%>
                </td>
                <td>
                  <%out.println(rs.getInt(2));%>
                </td>
                <td>
                  <%out.println(rs.getString(3));%>
                </td>
                <td>
                  <%out.println(rs.getInt(4));%>
                </td>
                <td>
                  <%out.println(rs.getString(5));%>
                </td>
                <td>
                  <%out.println(rs.getString(6));%>
                </td>
                <td>
                  <%out.println(rs.getString(7));%>
                </td>
                <td>
                  <%out.println(rs.getString(8));%>
                    </td>
                
              </tr>
               <style>
			  tr:th 
			  </style>
              <% 
              } 
              con.close();
               } 
               catch(Exception e)
                { 
                  System.out.println(e.toString());
                   } 
                   %>
        </table>
      </div>


  </body>

  </html>