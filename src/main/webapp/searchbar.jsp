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
  <link
    href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="css/searchbar.css" />
  <title>BonVoyage</title>
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
        onclick="location.href='logout.jsp'"
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
        style="border-radius: 25px 0px 0px 25px;"
          type="text"
          name="search"
          placeholder=" Search Places (E.g.: Delhi) or Hotel"
        />
      </div>
      <button style="width:150px;border-radius: 0px 25px 25px 0px;"type="submit"><i class="fa fa-search"></i></button>
    </div>
  </div>
</form>
        <div class="container">
            <div class="inside">
                <ul>
                <%String email=null; %>
                <%int c=0; %>
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
                    <%c=1; %>
                    <li class="items">                                 <!--Ekhan theke-->
                        <img src="images/Top-10-Luxury-Hotels-in-India.jpg">
                        <div class="details">
                           <h2 style=" font-family:Georgia, 'Times New Roman', Times, serif;"><a style="text-decoration:none;" href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>&hotmail=<%=resultSet.getString("email")%>"><%=resultSet.getString("nam")%></a></h2>
                            <%email=resultSet.getString("email"); %>
                           Address: <%=resultSet.getString("address")%><br>
                            Email: <%=resultSet.getString("email")%> <br>
                            Phone: <%=resultSet.getString("phone")%>
                                    
                        </div>
                    </li> 
                    
                    <% 
}


} catch (Exception e) {
e.printStackTrace();
}
%> 
<%if(c==0)
{
	response.sendRedirect("matchnotfound.jsp");
}
	
	%>
                                            <!--Eto ta-->
                </ul>
            </div>
        </div>
  </div>
</div>
</section>
    <footer class="background">
      <p class="text-footer">© Copyright 2022 BonVoyage. All rights reserved.</p>
  </footer>
   
</body>
</html>