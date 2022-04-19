<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  <link
    href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="css/search.css" />
  <title>Search</title>
  <link rel="shortcut icon" href="./images/favicon.png" type="image/x-icon" />
  <script
    src="https://kit.fontawesome.com/32ee0c0b42.js"
    crossorigin="anonymous"
  ></script>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
  />
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
<section class="firstsection">
  <div class="box-main">
    <div class="firstHalf">
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
<form action="SearchServ" method="post">
  <div class="input">
    <div class="input-group">
      <div class="form-outline">
        <input
          type="text"
          name="search"
          placeholder="Search Places (E.g.: Delhi) or Hotel"
        />
      </div>
      <button type="submit"><i class="fa fa-search"></i></button>
    </div>
  </div>
</form>
        <div class="container">
            <div class="inside">
                <ul>
                 <%String search=(String)session.getAttribute("search");%>
                 <%System.out.println(search); %>
                  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM hotelreg where address='" +search+"' or nam='" +search+"'";


resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                    <!--Loop here-->
                    
                    <li class="items">                                 <!--Ekhan theke-->
                        <img src="images/Top-10-Luxury-Hotels-in-India.jpg">
                        <div class="details">
                           <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam")%></a></h3>
                            <br>
                            Price: 500
                            <br>
                            <%=resultSet.getString("address")%> 
                        </div>
                    </li>                                              <!--Eto ta-->
                    <% 
}


} catch (Exception e) {
e.printStackTrace();
}
%>
                </ul>
            </div>
        </div>
  </div>
</div>
</section>
    <footer class="background">
      <p class="text-footer">� Copyright 2022 BonVoyage. All rights reserved.</p>
  </footer>
   
</body>
</html>