<!DOCTYPE html>
<html lang="en">
<head>
<%
  if(session.getAttribute("sesmail")==null){
	  response.sendRedirect("login.html");
  }
  
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

  %>
  
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>BonVoyage</title>
  <link rel="stylesheet" href="./css/account.css" />
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
        onclick="location.href='logout.jsp'"
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
 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String s1=(String)session.getAttribute("sesmail");
System.out.println(s1);
String sql ="SELECT * FROM usrreg where email='" +s1+"'";
System.out.println(s1);


resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<section class="firstsection">
  <div class="box-main">
    <div class="firstHalf">
      <div class="w3-content" style="max-width:1000px; margin-top: 100px;">
        <div class="w3-row">
          <div class="w3-half w3-light-green w3-container" style="height:600px">
            <div class="w3-padding-64 w3-center">
              <h1 style="font-weight: 600; font-family:monospace;">Hello!!!</h1>
              <img src="./images/bot.jpg" class="w3-margin w3-circle" alt="Person" style="width:50%">
              <div class="w3-left-align w3-padding-large">
                <p style="font-weight: 600;">Welcome to Bon Voyage !</p>
                <p>Hope you are having a great time at our website.If you are facing any difficulties, feel free to contact us at our registered email id or phone number anytime.</p>
                <p>Thank you...</p>
              </div>
            </div>
          </div>
          <div class="w3-half w3-black w3-container w3-center" style="height:600px">
            <div class="w3-padding-64">
              <h1><%=resultSet.getString("nam") %></h1>
            </div>
            <div class="w3-padding-64">
              <p class="w3-button w3-black w3-block w3-left-align w3-hover-light-green w3-padding-16"><i class="fa-solid fa-envelope"></i> E-mail: <%=resultSet.getString("email") %></p>
              <p class="w3-button w3-black w3-block w3-left-align w3-hover-light-green w3-padding-16"><i class="fa-solid fa-phone"></i> Phone: <%=resultSet.getString("phone") %></p>
              <p class="w3-button w3-black w3-block w3-left-align w3-hover-light-green w3-padding-16"><i class="fa-solid fa-location-dot"></i> Address: <%=resultSet.getString("address") %></p>
              <p class="w3-button w3-black w3-block w3-left-align w3-hover-light-green w3-padding-16"><i class="fa-solid fa-address-card"></i> ID-Proof: 0000000000</p>
            </div>
          </div>   
        </div>
      </div>
    </div>
  </div>
</section>
    <% 
}


} catch (Exception e) {
e.printStackTrace();
}
%>
<footer class="background">
  <p class="text-footer">© Copyright 2022 BonVoyage. All rights reserved.</p>
</footer>
   
</body>
</html>