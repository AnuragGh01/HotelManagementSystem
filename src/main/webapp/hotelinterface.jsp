<!DOCTYPE html>
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
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  <link href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="css/hotelinterface.css" />
  <title>BonVoyage</title>
  <link rel="shortcut icon" href="./images/favicon.png" type="image/x-icon" />
  <script src="https://kit.fontawesome.com/32ee0c0b42.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
</head>

<body>
  <nav class="navbar background">
    <ul class="nav-list">
      <div class="logo">
        <img src="./images/clipart1693714.png" />
      </div>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="w3-dropdown-hover">
      <button class="btn btn-sm"><i class="fas fa-sort"></i> My Hotel</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="hotelaccount.jsp" class="w3-bar-item w3-button w3-black w3-border-bottom border">Hotel Profile</a>
        <a href="hotelmybookings.jsp" class="w3-bar-item w3-button w3-black w3-border-bottom">No. of Bookings</a>
      </div>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;

    <div class="rightNav">
      <!-- <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" ); %> -->
      <button type="button" class="btn btn-sm" id="button" onclick="location.href='logout.jsp'">
        <i class="fas fa-external-link-alt"></i> Logout
      </button>
    </div>
  </nav>
   <div class="middle-part">
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
        String sql ="SELECT * FROM hotelreg where email='" +s1+"'";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>


  <section class="firstsection">
    <div class="box-main">

      <h1 style="position: absolute; left: 30px; top:120px; font-weight: 600;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;"> <%=resultSet.getString("nam") %></h1>           <!--Set Hotel Name Dynamic-->
              <!--Set  Dynamic-->
        <form action="hoteldetailserv" method="post">
          <label style="color: rgb(0, 0, 0); font-weight: bold">A.C rooms available for bookings :</label><br />
          <input style="color:black;" class="btn" type="number" name="ac" required /><br />

          <label style="color: rgb(0, 0, 0); font-weight: bold">Non-A.C rooms available for bookings :</label><br />
          <input style="color:black;" class="btn" type="number" name="nonac" required /><br />

          <label style="color: rgb(0, 0, 0); font-weight: bold">Price per A.C Rooms :</label><br />
          <input style="color:black;" class="btn" type="number" name="pr_ac"  required /><br />

          <label style="color: rgb(0, 0, 0); font-weight: bold">Price per non-A.C Rooms :</label><br />
          <input style="color:black;" class="btn" type="number" name="pr_nonac" required /><br />
          
          <label style="color: rgb(0, 0, 0); font-weight: bold">Maximum no. of people per room :</label><br />
          <input style="color:black;" class="btn" type="number" name="max" required /><br />

          <input class="btn btn-sm" type="submit" value="Set Details" />
        </form>
    </div>
  </section>
          <%  
  }
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
  <%
    try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String s1=(String)session.getAttribute("sesmail");
        System.out.println(s1);
       String sql ="SELECT * FROM hotelbook where hotemail='" +s1+"' order by id desc limit 1";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>
    <p style="font-weight: bold; position:absolute; left: 1130px; top: 150px;">A.C Rooms available for bookings : <%=resultSet.getString("ac")%></p>          <!--Set  Dynamic-->
      <p style="font-weight: bold; position:absolute; left: 1130px; top: 190px;">Non-A.C Rooms available for bookings : <%=resultSet.getString("nonac")%></p> 
       <p style="font-weight: bold; position:absolute; left: 1130px; top: 230px;">Price of A.C Rooms : <%=resultSet.getString("pr_ac")%></p> 
       <p style="font-weight: bold; position:absolute; left: 1130px; top: 270px;">Price of non-A.C Rooms : <%=resultSet.getString("pr_nonac")%></p> 
        <p style="font-weight: bold; position:absolute; left: 1130px; top: 310px;">Maximum no. of people per room : <%=resultSet.getString("max")%></p> 
       
       <%  
  }
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>

  <footer class="background">
    <p class="text-footer">
      © Copyright 2022 BonVoyage. All rights reserved.
    </p>
  </footer>
</body>

</html>