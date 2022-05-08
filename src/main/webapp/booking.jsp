<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Booking</title>
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
          <% 
String ss =request.getParameter("nam");
String st =request.getParameter("address");

System.out.println(ss+" "+st);
session.setAttribute("hotnam",ss);
session.setAttribute("location",st);

%>
            <i><u><h1 style="font-weight: bold"><%out.print(ss);%></h1></u></i>
            <i><h1 style="font-weight: bold">(<%out.print(st);%>)</h1></i>
            
            <%String s1=(String)session.getAttribute("sesmail");%>
            <i><h4 style="font-weight: bold;left:1000px;top:7px; position:absolute">Your registered email is: <u><%out.print(s1);%></u></h4></i>
            
            <div class="grid">
            <label style="font-weight: bold" for="arrive" class="label-date"
                >Check-in Date</label
              >
              <input
                type="date"
                id="arrive_d"
                class="btn"
                name="arrive_d"
                value=""
                required
              />
              
              <br />
              <label style="font-weight: bold" for="arrive" class="label-time"
                >Check-in Time</label
              >
              <input
                type="time"
                id="arrive_t"
                class="btn"
                name="arrive_t"
                value="00:00"
              />

              <br />
              <label style="font-weight: bold" for="depart" class="label-date"
                >Check-out Date</label
              >
              <input
                type="date"
                id="depart_d"
                class="btn"
                name="depart_d"
                value=""
                required
              />
              
              <br />
              <label style="font-weight: bold" for="depart" class="label-time"
                >Check-out Time</label
              >
              <input
                type="time"
                id="depart_t"
                class="btn"
                name="depart_t"
                value="23:59"
              />
            </div>
            <div
              style="position: absolute; right: -400px; top: 135px"
              class="grid"
            >
              <input type="number" class="btn" name="nop" required>
              <label style="font-weight: bold" for="people"
                >No. of People</label
              >
              <br />
              <select name="room" id="room" class="btn">
                <option value="AC">AC</option>
                <option value="Non-AC">Non-AC</option>
              </select>
              <label style="font-weight: bold" for="fruit">Room Type</label>
              <br />
            </div>

            <div style="position: absolute; right: -340px; bottom: 120px ;">
              <h4 style="font-weight: 500;">No. of A.C rooms available: 5</h4>
              <h4 style="font-weight: 500;">No. of non-A.C rooms available: 5</h4>
            </div>
            <div style="position: absolute; right: -298px; bottom: 40px ;">
              <h4 style="font-weight: 500;">Price of A.C rooms: 2000</h4>
              <h4 style="font-weight: 500;">Price of non-A.C rooms: 1000</h4>
            </div>
            <div class="grid">
              <br />
              <button type="submit" value="Submit" class="btn btn-sm" >
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
</html>