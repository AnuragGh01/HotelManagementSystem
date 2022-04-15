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
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit:wght@100;200&family=Old+Standard+TT:wght@700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/62847faab8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/search.css">
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
                <button type="button" class="btn btn-primary" id="button1" onclick="location.href='userinterface.jsp'">
                    <i class="fa-solid fa-house"></i>
                    Home 
                </button>
            </div>
            <div class="dropdown">
                <button type="button" class="btn btn-primary" id="button" id="button2" onclick="location.href='homepage.html'">
                    <i class="fa-solid fa-right-from-bracket"></i>
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
		<form action="SearchServ" method="post">
        <div class="input">
            <div class="input-group">
                <div class="form-outline">
                    <input type="text" name="search" id="form1" class="form-control" placeholder="Search places (E.g.: Delhi) or Hotel"></input>
                </div>
                <button type="submit" class="btn btn-primary" id="button">
                    Search
                </button>
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
    <div class="lower-part">
        <p class="text-footer">Contact us at  Email :<a href="">hms@example.com </a>  ,   Phone :1234567890</p>
   </div>
   
</body>
</html>