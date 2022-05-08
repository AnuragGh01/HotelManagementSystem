<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/fontawesome.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/userdashboard.css">
    <title>Document</title>
</head>
<body>
    <div class="upper-part">
        <div class="left-part">
            <div class="logo">
                <img src="images/clipart1693714.png">
            </div>
            <div class="heading">
               <h1>Bon Voyage</h1>
            </div>
        </div>
        <div class="right-part">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                  My Profile
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                  <li><a class="dropdown-item" href="">Profile</a></li>
                  <li><a class="dropdown-item" href="mybookings.jsp">My bookings</a></li>
                  <!-- <li><a class="dropdown-item" href="#">Some</a></li> -->
                </ul>
              </div>
            <div class="dropdown">
                <button type="button" class="btn btn-primary" id="button" onclick="location.href='homepage.html'">
                    Logout 
                </button>
            </div>
        </div>
    </div>
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
<div class="input">
    <div class="input-group">
        <div class="form-outline">
            <input type="search" id="form1" class="form-control" placeholder="Search places (E.g.: Delhi) or Hotel"></input>
        </div>
        <button type="button" class="btn btn-primary" id="button">
            Search
        </button>
    </div>
</div>


<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<center><h3>Top picks for you</h3>
</center>

<tr bgcolor="#000000">
<td><b>Name</b></td>
<td><b>Address</b></td>
<td><b>Phone</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM hotelreg limit 8";


resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>"><%=resultSet.getString("nam") %></a></td>                   <!-- dont change nam -->                  <!-- dont change nam -->
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("phone") %></td>


</tr>

<% 
}


} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
<div class="lower-part">
    <p class="text-footer">Contact us at  Email :<a href="">hms@example.com </a>  ,   Phone :1234567890</p>
</div>
</body>
</html>
</table>
