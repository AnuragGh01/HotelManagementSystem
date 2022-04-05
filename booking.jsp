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
    <link
      rel="shortcut icon"
      href="./images/clipart1693714.png"
      type="image/x-icon"
    />
  </head>
  <body>
    <nav class="navbar background">
      <ul class="nav-list">
        <div class="logo">
          <img src="./images/clipart1693714.png" />
        </div>
        <li><a href="#booking">Bookings</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>

      <!-- <div class="rightNav">
        <button onclick="location.href='homepage.html'" class="btn btn-sm">
          Logout
        </button>
      </div> -->
    </nav>

    <section class="firstsection" id="booking">
      <div class="box-main">
        <div style="position: absolute; left: 100px" class="firstHalf">
          <form action="" method="post">
            <h2 style="font-weight: bold">Hotel Asansol International</h2>
            <div class="grid">
              <input
                type="date"
                id="arrive_d"
                class="btn"
                name="arrive_d"
                value=""
                required
              />
              <label style="font-weight: bold" for="arrive" class="label-date"
                >Check-in Date</label
              >
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
              <input
                type="date"
                id="depart_d"
                class="btn"
                name="depart_d"
                value=""
                required
              />
              <label style="font-weight: bold" for="depart" class="label-date"
                >Check-out Date</label
              >
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
              style="position: absolute; right: -250px; top: 70px"
              class="grid"
            >
              <select name="peop" id="peop" class="btn" required>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
              <label style="font-weight: bold" for="people"
                >No. of People</label
              >
              <br />
              <select name="room" id="room" class="btn">
                <option value="ac">A.C</option>
                <option value="nonac">Non-A.C</option>
              </select>
              <label style="font-weight: bold" for="fruit">Room Type</label>
              <br />
            </div>

            <div style="position: absolute; right: -320px; bottom: 80px ;">
              <h4>No. of A.C rooms available: 5</h4>
              <h4>No. of non-A.C rooms available: 5</h4>
            </div>
            <div style="position: absolute; right: -620px; bottom: 80px ;">
              <h4>Price of A.C rooms: 500</h4>
              <h4>Price of non-A.C rooms: 500</h4>
            </div>
            <div class="grid">
              <br />
              <button type="submit" value="Submit" class="btn btn-sm">
                Book Now
              </button>
            </div>
          </form>
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
