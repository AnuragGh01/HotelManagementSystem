<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  <link href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="css/hotelinterface.css" />
  <title>HotelInterface</title>
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
      <button type="button" class="btn btn-sm" id="button" onclick="location.href='homepage.html'">
        <i class="fas fa-external-link-alt"></i> Logout
      </button>
    </div>
  </nav>


  <section class="firstsection">
    <div class="box-main">
      <h1 style="position: absolute; left: 30px; top:120px; font-weight: 600;">Hotel Mariot</h1>           <!--Set Hotel Name Dynamic-->
      <p style="font-weight: bold; position:absolute; right: 124px; top: 150px;">No. of A.C Rooms available :</p>          <!--Set  Dynamic-->
      <p style="font-weight: bold; position:absolute; right: 85px; top: 200px;">No. of non-A.C Rooms available :</p>           <!--Set  Dynamic-->
        <form action="" method="post">
          <label style="color: rgb(0, 0, 0); font-weight: bold">No. of A.C Rooms :</label><br />
          <input class="btn" type="number" name="ac" value="0" required /><br />

          <label style="color: rgb(0, 0, 0); font-weight: bold">No. of non-A.C Rooms :</label><br />
          <input class="btn" type="number" name="nonac" value="0" required /><br />

          <label style="color: rgb(0, 0, 0); font-weight: bold">Price per A.C Rooms :</label><br />
          <input class="btn" type="number" name="pr_ac" value="0" required /><br />

          <label style="color: rgb(0, 0, 0); font-weight: bold">Price per non-A.C Rooms :</label><br />
          <input class="btn" type="number" name="pr_nonac" value="0" required /><br />

          <input class="btn btn-sm" type="submit" value="Set Details" />
        </form>
    </div>
  </section>

  <footer class="background">
    <p class="text-footer">
      © Copyright 2022 BonVoyage. All rights reserved.
    </p>
  </footer>
</body>

</html>