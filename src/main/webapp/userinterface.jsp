<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    /> -->
    <!-- <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script> -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/userInterface.css" />
    <title>UserInterface</title>
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
          <img src="./images/clipart1693714.png" />
        </div>
      </ul>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="w3-dropdown-hover">
        <button class="btn btn-sm">
            <i class="fas fa-sort"></i> My Account
        </button>
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
          <a href="account.jsp" class="w3-bar-item w3-button w3-black w3-border-bottom border">Profile</a>
          <a href="mybookings.jsp" class="w3-bar-item w3-button w3-black w3-border-bottom">My Bookings</a>
        </div>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;

      <div class="rightNav">
        <!-- <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" ); %> -->
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

   
      <!-- <div class="box-main"> -->
        <!-- <div class="firstHalf"> -->
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
<% 
            try{ 
              connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
              statement=connection.createStatement();
              String sql ="SELECT * FROM hotelreg limit 8";
              resultSet = statement.executeQuery(sql);
              while(resultSet.next()){
              %>
            <div class="hotels">
              <div class="row">
                <div class="hotel-item">
                  <div class="row1">
                    <div class="image">
                      <img src="./images/Taj-916x516.jpg" />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam")%> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                  <div class="row1">
                    <div class="image">
                      <img
                        src="./images/leonardo-1072620-vieat-garten-cafe-3388-hor-clsc_O-945450.jpg"
                      />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                  <div class="row1">
                    <div class="image"><img src="./images/ramada.jpg" /></div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                  <div class="row1">
                    <div class="image">
                      <img src="./images/istockphoto-1066999762-612x612.jpg" />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                </div>
                <div class="hotel-item">
                  <div class="row1">
                    <div class="image">
                      <img
                        src="./images/oorr-watervilla-bedroom-2-1170x731.jpg"
                      />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                  <div class="row1">
                    <div class="image">
                      <img src="./images/Top-10-Luxury-Hotels-in-India.jpg" />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                  <div class="row1">
                    <div class="image">
                      <img src="./images/maxresdefault.jpg" />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                  <div class="row1">
                    <div class="image">
                      <img src="./images/Taj Lake Palace Udaipur.webp" />
                    </div>
                    <div class="text">
                      <h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3>
                    </div>
                    <%resultSet.next(); %>
                  </div>
                </div>
              </div>
        </div>
        <%  
  }
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
      </div>
    
  
    <footer class="background">
      <p class="text-footer">
        © Copyright 2022 BonVoyage. All rights reserved.
      </p>
    </footer>
  </body>
</html>