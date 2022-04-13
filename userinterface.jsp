<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/fontawesome.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/userInterface.css">
    <title>User Interface</title>
</head>
<body>
    <div class="upper-part">
        <div class="left-part">
            <div class="logo">
                <a href="userinterface.jsp"><img src="images/clipart1693714.png"></a>
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
                  <li><a class="dropdown-item" href="account.jsp">Profile</a></li>
                  <li><a class="dropdown-item" href="mybookings.jsp">My bookings</a></li>
                  <!-- <li><a class="dropdown-item" href="#">Some</a></li> -->
                </ul>
              </div>
            <div class="dropdown">
            <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
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
       <form action="SearchServ" method="post">
       <div class="input">
            <div class="input-group">
                <div class="form-outline">
                    <input type="text" name="search" id="form1" class="form-control" placeholder="Search places (E.g.: Delhi) or Hotel"></input>
                </div>
                <button type="submit" class="btn btn-primary" id="button" >
                    Search
                </button>
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
                         
                            <div class="image"><img src="images/Taj-916x516.jpg"></div>
                            <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam")%> (<%=resultSet.getString("address")%>)</a></h3></div> 
                            <%resultSet.next(); %>
                      
                      </div>
                      <div class="row1">
                      
                           <div class="image"><img src="images/leonardo-1072620-vieat-garten-cafe-3388-hor-clsc_O-945450.jpg"></div>
                           <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div> 
                                                       <%resultSet.next(); %>
                           
                        
                     </div>
                     <div class="row1">
                       
                           <div class="image"><img src="images/ramada.jpg"></div>
                           <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div>
                                                       <%resultSet.next(); %>
                            
                       
                     </div>
                     <div class="row1">
                       
                           <div class="image"><img src="images/istockphoto-1066999762-612x612.jpg"></div>
                           <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div> 
                                                       <%resultSet.next(); %>
                           
                       
                     </div>
               </div> 
               <div class="hotel-item">
                <div class="row1">
                   
                      <div class="image"><img src="images/oorr-watervilla-bedroom-2-1170x731.jpg"></div>
                      <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div> 
                                                 <%resultSet.next(); %>
                     
                   
                </div>
                <div class="row1">
                
                     <div class="image"><img src="images/Top-10-Luxury-Hotels-in-India.jpg"></div>
                     <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div> 
                                             <%resultSet.next(); %>
                 
               </div>
               <div class="row1">
                  
                     <div class="image"><img src="images/maxresdefault.jpg"></div>
                     <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div> 
                                             <%resultSet.next(); %>
                 
               </div>
               <div class="row1">
                 
                     <div class="image"><img src="images/Taj Lake Palace Udaipur.webp"></div>
                     <div class="text"><h3><a href="booking.jsp?nam=<%=resultSet.getString("nam") %>&address=<%=resultSet.getString("address")%>"><%=resultSet.getString("nam") %> (<%=resultSet.getString("address")%>)</a></h3></div> 
                                             <%resultSet.next(); %>
                 
               </div>       
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
    <div class="lower-part">
         <p class="text-footer">Contact us at  Email :<a href="">bonvoyageofficial.in@gmail.com </a></p>
    </div>
   </section>
</body>
</html>