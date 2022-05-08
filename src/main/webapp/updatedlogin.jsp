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
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/login.css" />
    <title>Signin</title>
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="rightNav">
        <button onclick="location.href='homepage.html'" class="btn btn-sm">
            <i class="fa-solid fa-circle-arrow-left"></i><nobr> Go Back</nobr></button
        >
      </div>
    </nav>
    <section class="firstsection">
      <div class="box-main">
        <div class="firstHalf">
          <div class="project">
            <form class="form" action="LoginServ" method="post">
              <h1>Login</h1>
              
              <div class="form-group">
                <p><i class="fa-solid fa-envelope"></i> Enter your Email :</p>
                <br>
                <input type="email" name="email" placeholder="Email" required />
              </div>
              <div class="form-group">
                <p><i class="fa-solid fa-lock"></i> Enter your Password :</p>
                <br>
                <input type="password" name="psw" placeholder="Password" required />
              </div>
              &nbsp;
              <span style="color: red; font-family: sans-serif; font-weight: 600;"><i class="fa-solid fa-triangle-exclamation"></i> Invalid email or password</span>
              <div class="form-group">
                <a href="forgot.html">Forgot Password ?</a>
              </div>
              <div class="form-group">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-sm" type="submit"><i class="fa-solid fa-right-to-bracket"></i> Login</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <footer class="background">
        <p class="text-footer">� Copyright 2022 BonVoyage. All rights reserved.</p>
    </footer>
  </body>
</html>