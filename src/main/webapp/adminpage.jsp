<html lang="en">
  <head>
  <%
  if(session.getAttribute("sesmail")==null){
	  response.sendRedirect("login.html");
  }
  
  
  %>
  <%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 %>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BonVoyage</title>
    <link rel="stylesheet" href="./css/adminpage.css" />
    <meta
      name="viewport"
      content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="shortcut icon" href="./images/favicon.png" type="image/x-icon">
    <script
      src="https://kit.fontawesome.com/32ee0c0b42.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  </head>
  <body>
    <nav class="navbar background">
      <ul class="nav-list">
        <div class="logo">
          <img src="images/clipart1693714.png">
        </div>
      </ul>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="rightNav">
        <button
          type="button"
          class="btn btn-sm"
          id="button"
          onclick="location.href='logout.jsp'"
        >
          <i class="fas fa-external-link-alt"></i> Logout
        </button>&nbsp;&nbsp;&nbsp;&nbsp;
      </div>
    </nav>
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "hms";
String userId = "root";
String password = "root";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

    <section class="firstsection">
      <div class="box-main">
        <div class="firstHalf">
          <h3 style="font-family: sans-serif; font-weight: bold;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">
            Total Users:
          </h3>
          <table>
            <thead>
              <th>User Name</th>
              <th>User Mail ID</th>
              <th>User Phone No</th>
              <th>User Address</th>
              <th>Password</th>
            </thead>
             <%
    try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
       String sql ="SELECT * FROM usrreg";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>

            <tbody>
            
              <tr>
                <!--While loop-->
                <td data-label="name"><%=resultSet.getString("nam")%></td>
                <td data-label="loc"><%=resultSet.getString("email")%></td>
                <td data-label="in"><%=resultSet.getString("phone")%></td>
                <td data-label="out"><%=resultSet.getString("address")%></td>
                <td data-label="peop"><%=resultSet.getString("pass")%></td>
                
              </tr>
              
            </tbody>
            <%  
  }
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
          </table>
          
          <h3 style="font-family: sans-serif; font-weight: bold;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">
            Total Hotels:
          </h3>
          <table>
            <thead>
              <th>Hotel Name</th>
              <th>Hotel Location</th>
              <th>Hotel Mail Id</th>
              <th>Hotel Phone No</th>
              <th>Password</th>
            </thead>
             <%
    try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
       String sql ="SELECT * FROM hotelreg";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>

            <tbody>
            
              <tr>
                <!--While loop-->
                <td data-label="name"><%=resultSet.getString("nam")%></td>
                <td data-label="loc"><%=resultSet.getString("address")%></td>
                <td data-label="in"><%=resultSet.getString("email")%></td>
                <td data-label="out"><%=resultSet.getString("phone")%></td>
                <td data-label="peop"><%=resultSet.getString("pass")%></td>
              </tr>
              
            </tbody>
            <%  
  }
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
          </table>
          
        </div>
      </div>
    </section>


    <footer class="background">
      <p class="text-footer">© Copyright 2022 BonVoyage. All rights reserved.</p>
  </footer>
  </body>
</html>