<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
    <link rel="stylesheet" href="css/Admin.css" />
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
          <a href="userinterface.jsp"><img src="images/clipart1693714.png"></a>
        </div>
      </ul>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="rightNav">
        <button onclick="location.href='userinterface.jsp'" class="btn btn-sm">
          <i class="fa-solid fa-house"></i>
          Home
        </button>
        &nbsp;&nbsp;
        <button
          type="button"
          class="btn btn-sm"
          id="button"
          onclick="location.href='homepage.html'"
        >
          <i class="fas fa-external-link-alt"></i> Logout
        </button>
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
          <h3 style="font-family: sans-serif; font-weight: bold">
            Total Users:
          </h3>
          <table>
            <thead>
              <th>User Name</th>
              <th>User Email</th>
              <th>Phone No</th>
              <th>Address</th>
              <th>Password</th>
            </thead>

            <tbody>
            <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String s1=(String)session.getAttribute("sesmail");
System.out.println(s1);
String sql ="SELECT * FROM usrbook where usrmail='" +s1+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
            
              <tr>
                <!--While loop-->
                <td data-label="name"><%=resultSet.getString("hotnam") %></td>
                <td data-label="loc"><%=resultSet.getString("location") %></td>
                <td data-label="in"><%=resultSet.getString("indate") %></td>
                <td data-label="out"><%=resultSet.getString("outdate") %></td>
                <td data-label="peop"><%=resultSet.getString("nop") %></td>
              </tr>
              
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
            </tbody>
          </table>
          
        </div>
      </div>
      <div class="box-main">
        <div class="firstHalf">
          <h3 style="font-family: sans-serif; font-weight: bold">
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

            <tbody>
            <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String s1=(String)session.getAttribute("sesmail");
System.out.println(s1);
String sql ="SELECT * FROM usrbook where usrmail='" +s1+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
            
              <tr>
                <!--While loop-->
                <td data-label="name"><%=resultSet.getString("hotnam") %></td>
                <td data-label="loc"><%=resultSet.getString("location") %></td>
                <td data-label="in"><%=resultSet.getString("indate") %></td>
                <td data-label="out"><%=resultSet.getString("outdate") %></td>
                <td data-label="peop"><%=resultSet.getString("nop") %></td>
              </tr>
              
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
            </tbody>
          </table>
          
        </div>
      </div>
    </section>


    <footer class="background">
      <p class="text-footer">© Copyright 2022 BonVoyage. All rights reserved.</p>
  </footer>
  </body>
</html>