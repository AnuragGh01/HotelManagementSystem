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
                  <li><a class="dropdown-item" href="#">Profile</a></li>
                  <li><a class="dropdown-item" href="#">My bookings</a></li>
                  <!-- <li><a class="dropdown-item" href="#">Some</a></li> -->
                </ul>
              </div>
            <div class="dropdown">
                <button type="button" class="btn btn-primary" id="button">
                    Logout 
                </button>
            </div>
        </div>
    </div>
    <div class="middle-part">
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
        <div class="hotels">
            <div class="row">
               <div class="hotel-item">
                      <div class="row1">
                         <a href="*">
                            <div class="image"><img src="images/Taj-916x516.jpg"></div>
                            <div class="text"><h3>Taj Hotel</h3></div> 
                         </a>
                      </div>
                      <div class="row1">
                        <a href="*">
                           <div class="image"><img src="images/leonardo-1072620-vieat-garten-cafe-3388-hor-clsc_O-945450.jpg"></div>
                           <div class="text"><h3>Hotel Mariott</h3></div> 
                        </a>
                     </div>
                     <div class="row1">
                        <a href="*">
                           <div class="image"><img src="images/download.jpg"></div>
                           <div class="text"><h3>Hotel Ramada</h3></div> 
                        </a>
                     </div>
                     <div class="row1">
                        <a href="*">
                           <div class="image"><img src="images/istockphoto-1066999762-612x612.jpg"></div>
                           <div class="text"><h3>Sobralia Hotel</h3></div> 
                        </a>
                     </div>
               </div> 
               <div class="hotel-item">
                <div class="row1">
                   <a href="*">
                      <div class="image"><img src="images/oorr-watervilla-bedroom-2-1170x731.jpg"></div>
                      <div class="text"><h3>The Raviz Kolam</h3></div> 
                   </a>
                </div>
                <div class="row1">
                  <a href="*">
                     <div class="image"><img src="images/Top-10-Luxury-Hotels-in-India.jpg"></div>
                     <div class="text"><h3>Oberoi Hotel</h3></div> 
                  </a>
               </div>
               <div class="row1">
                  <a href="*">
                     <div class="image"><img src="images/maxresdefault.jpg"></div>
                     <div class="text"><h3>Hotel Fairmont</h3></div> 
                  </a>
               </div>
               <div class="row1">
                  <a href="*">
                     <div class="image"><img src="images/Taj Lake Palace Udaipur.webp"></div>
                     <div class="text"><h3>Hotel Lake Palace</h3></div> 
                  </a>
               </div>       
            </div>
          </div>
        </div>
    </div>
    <div class="lower-part">
         <p class="text-footer">Contact us at  Email :<a href="">hms@example.com </a>  ,   Phone :1234567890</p>
    </div>
   </section>
</body>
</html>