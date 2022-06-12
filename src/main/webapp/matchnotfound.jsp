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
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
  <link
    href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="css/matchnotfound.css" />
  <title>BonVoyage</title>
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
        <a href="userinterface.jsp"><img src="images/clipart1693714.png"></a>
      </div>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="rightNav">
      <button onclick="location.href='userinterface.jsp'" class="btn btn-sm">
        <i class="fa-solid fa-house"></i>
        Home
      </button>
      &nbsp;&nbsp;
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
<section class="firstsection">
  <div class="box-main">
    <div class="firstHalf">
      <form action="SearchServ" method="post">
        <div class="input">
          <div class="input-group">
            <div class="form-outline">
              <input
               style="border-radius: 25px 0px 0px 25px;"
                type="text"
                name="search"
                placeholder=" Search Places (E.g.: Delhi) or Hotel"
              />
            </div>
            <button style="width:150px;border-radius: 0px 25px 25px 0px;type="submit"><i class="fa fa-search"></i></button>
          </div>
          <br>
          <span style="color: red; display:flex; justify-content: center; font-family: sans-serif; font-size: larger; font-weight: 600;"><i class="fa-solid fa-triangle-exclamation">&nbsp;</i> Match Not Found !</span>
        </div>
        
      </form>
        <div class="container">
          
        </div>
  </div>
</div>
</section>
    <footer class="background">
      <p class="text-footer">� Copyright 2022 BonVoyage. All rights reserved.</p>
  </footer>
   
</body>
</html>