<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Bookings</title>
    <link rel="stylesheet" href="./css/mybookings.css" />
    <meta
      name="viewport"
      content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link
      rel="shortcut icon"
      href="./images/clipart1693714.png"
      type="image/x-icon"
    />
    <script
      src="https://kit.fontawesome.com/32ee0c0b42.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <nav class="navbar background">
      <ul class="nav-list">
        <div class="logo">
          <img src="./images/clipart1693714.png" />
        </div>
        <div class="heading">
          <h1>Bon Voyage</h1>
        </div>
        <li><a href="#contact">Contact</a></li>
      </ul>

      <div class="rightNav">
        <button onclick="location.href='userinterface.jsp'" class="btn btn-sm">
          <i class="fa-solid fa-house"></i>
          Home
        </button>
        &nbsp;&nbsp;&nbsp;
        <button onclick="location.href='homepage.html'" class="btn btn-sm">
          <i class="fa-solid fa-right-from-bracket"></i>
          Logout
        </button>
      </div>
    </nav>

    <section class="firstsection">
      <div class="box-main">
        <div class="firstHalf">
          <h3 style="font-family: sans-serif; font-weight: bold">
            My Bookings:
          </h3>
          <table>
            <thead>
              <th>Hotel Name</th>
              <th>Location</th>
              <th>Check-In</th>
              <th>Check-Out</th>
              <th>No. of People</th>
              <th>Room Type</th>
            </thead>

            <tbody>
              <tr>
                <!--While loop-->
                <td data-label="name">Taj Hotel</td>
                <td data-label="loc">Kolkata</td>
                <td data-label="in">14-Apr-2022</td>
                <td data-label="out">16-Apr-2022</td>
                <td data-label="peop">3</td>
                <td data-label="type">A.C</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>

    <section id="contact">
      <footer class="background">
        <p class="text-footer">
          Contact us at Email :<a href="">hms@example.com </a> , Phone
          :1234567890
        </p>
      </footer>
    </section>
  </body>
</html>
