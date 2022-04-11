<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hurricane&family=Julius+Sans+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/updatedlogin.css">
    <title>Signin</title>
    <link rel="shortcut icon" href="./images/clipart1693714.png" type="image/x-icon">
</head>
<body>
    <div class="project">
        <form class="form">
            <h1>Login</h1>
            <div class="form-group">
                <input type="email" id="Email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="password" id="Password" placeholder="Password" required>
            </div>
            <div class="password-validation">
                <span id="wp">Invalid email or password</span>
            </div>
            <div class="form-group">
                <a href="forgot.html">Forgot Password ?</a>
            </div>
            <div class="form-group">
                <button class="btn btn-primary" id="button" onclick="valid()" type="submit">Login</button>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        function valid()
        {
            var email=document.getElementById("Email").value;
            var password=document.getElementById("Password").value;

            //if(password=="")
            //{
                //inside else part
                var x=document.getElementById("wp");

                if(x.style.display==="none")
                {
                    x.style.display="block";
                }
                else
                {
                    x.style.display="none";
                }
                    // if(document.getElementById("button").clicked==false)
                    // {
                    //     var x=document.createElement("span");
                    //     x.innerText="Wrong password";
                    //     document.getElementById("wp").appendChild(x);
                    // } 
            //}
        }
        
    </script>
</body>
</html>