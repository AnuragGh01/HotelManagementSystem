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
    <title>BonVoyage</title>
    <link rel="stylesheet" href="./css/booking.css" />
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </head>
  <body>
    <nav class="navbar background">
      <ul class="nav-list">
        <div class="logo">
          <a href="userinterface.jsp"><img src="images/clipart1693714.png"></a>
        </div>
      </ul>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="rightNav">
        <button onclick="location.href='userinterface.jsp'" class="btn btn-sm">
          <i class="fa-solid fa-house"></i>
          Home
        </button>
      </div>
    </nav>

    <section class="firstsection" id="booking">
      <div class="box-main">
        <div style="position: absolute; left: 100px" class="firstHalf">
          <form action="UsrBookServ" method="post">
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
String ss =request.getParameter("nam");
String st =request.getParameter("address");
String hotmail =request.getParameter("hotmail");

System.out.println(ss+" "+st+" "+hotmail);
session.setAttribute("hotnam",ss);
session.setAttribute("location",st);
session.setAttribute("hotmail",hotmail);

%>
            <i><h1 style="font-weight: bold;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;"><%out.print(ss);%></h1></i>
            <i><h1 style="font-weight: bold;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">(<%out.print(st);%>)</h1></i>
            
            <%String s1=(String)session.getAttribute("sesmail");%>
            <i><h4 style="font-weight: bold;left:1000px;top:7px; position:absolute;">Your registered email is: <span style="background: linear-gradient(to left,red,green,blue);-webkit-background-clip:text; color:transparent;"> <%out.print(s1);%></span></h4></i>
            
            <div class="grid">
            <label style=" font-weight: bold;" for="arrive" class="label-date"
                >Check-in Date</label
              >&nbsp&nbsp
              <input
              	style="color:black;"
                type="date"
                id="txtDate"
                class="btnu"
                name="arrive_d"
                value=""
                required
              />
              
              <br />
              <label style="font-weight: bold" for="arrive" class="label-time"
                >Check-in Time</label
              >&nbsp&nbsp
              <input
              style="color:black;"
                type="time"
                id="arrive_t"
                class="btnu"
                name="arrive_t"
                value="00:00"
              />

              <br />
              <label style="font-weight: bold" for="depart" class="label-date"
                >Check-out Date </label
              >
              <input
              style="color:black;"
                type="date"
                id="txtDate1"
                class="btnu"
                name="depart_d"
                value=""
                required
              />
              
              <br />
              <label style="font-weight: bold" for="depart" class="label-time"
                >Check-out Time </label
              >
              <input
              style="color:black;"
                type="time"
                id="depart_t"
                class="btnu"
                name="depart_t"
                value="23:59"
              />
            </div>
            <div
              style="position: absolute; right: -400px; top: 135px"
              class="grid"
            >
              <input style="color:black;" type="number" class="btnu" name="nop" required>
              <label style="font-weight: bold" for="people"
                >No. of People</label
              >
              <br />
              <select style="color:black;" name="room" id="room" class="btnu">
                <option  value="AC">AC</option>
                <option value="Non-AC">Non-AC</option>
              </select>
              <label style="font-weight: bold" for="fruit">Room Type</label>
              <br />
            </div>
             <%
    try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String s2=(String)session.getAttribute("hotmail");
        System.out.println(s1);
       String sql ="SELECT * FROM hotelbook where email='" +s2+"' order by id desc limit 1";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>

            <div style="position: relative; left: 410px; bottom: 120px ;">
              <h4 style="font-weight: 500;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">No. of A.C rooms available: <span style="background: linear-gradient(to left,blue,green,red);-webkit-background-clip:text; color:transparent;"><%=resultSet.getString("ac")%></span></h4>
              <h4 style="font-weight: 500;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">No. of non-A.C rooms available: <span style="background: linear-gradient(to left,blue,green,red);-webkit-background-clip:text; color:transparent;"><%=resultSet.getString("nonac")%></h4>
            </div>
            <div style="position: relative; left: 410px; bottom: 120px ;">
              <h4 style="font-weight: 500;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">Price of A.C rooms:<span style="background: linear-gradient(to left,blue,green,red);-webkit-background-clip:text; color:transparent;"> <%=resultSet.getString("pr_ac")%></h4>
              <h4 style="font-weight: 500;font-family:Georgia, 'Times New Roman', Times, serif; font-weight: bold;">Price of non-A.C rooms: <span style="background: linear-gradient(to left,blue,green,red);-webkit-background-clip:text; color:transparent;"><%=resultSet.getString("pr_nonac")%></h4>
              
            </div>
            <%  
  }
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
            <div class="grid">
             
              <button type="submit" value="Submit" class="btnp btnp-sm" >
                &nbsp;&nbsp;Book Now&nbsp;&nbsp;
              </button>
            </div>
          </form>
        </div>
      </div>
    </section>

    <footer class="background">
      <p class="text-footer">© Copyright 2022 BonVoyage. All rights reserved.</p>
  </footer>
  </body>
  <script>
    $(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();

    var maxmonth = dtToday.getMonth() + 6;
    if(maxmonth < 10)
        maxmonth = '0' + maxmonth.toString();
    
    var minDate = year + '-' + month + '-' + day;
    var maxDate = year + '-' + maxmonth + '-' + day;

    $('#txtDate').attr('min', minDate);
    $('#txtDate').attr('max', maxDate);
    $('#txtDate1').attr('min', minDate);
    $('#txtDate1').attr('max', maxDate);
  });
  </script>
</html>