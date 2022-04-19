<!DOCTYPE html>
<html lang="en">

<head>
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
  <link rel="stylesheet" href="css/payment.css" />
  <title>Payment</title>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="rightNav">
      <button onclick="location.href='booking.jsp'" class="btn btn-sm">
          <i class="fa-solid fa-circle-arrow-left"></i><nobr> Go Back</nobr></button
      >
    </div>
  </nav>

    <section class="firstsection">
        <div class="box-main">
            <div class="firstHalf">
                <form action="pdserv" method="post">
                    <h2 style="font-weight: bold;">Payment Information(Credit Card)</h2>
                    <p style="font-weight: bold;">Cardholder Name:</p>
                    <input type="text" class="inputbox" name="name" placeholder="Enter name of card holder" required />
                    <p style="font-weight: bold;">Card Number:</p>
                    <input type="number" class="inputbox" name="card_number" id="card_number" placeholder="Enter 16-digit card number" required />
                    <p style="font-weight: bold;">Bank:</p>
                    <select class="inputbox" name="card_type" id="card_type" required>
                        <option value="">Select Bank</option>
                        <option value="sbi">SBI.</option>
                        <option value="hdfc">HDFC Bank.</option>
                        <option value="icici">ICICI Bank.</option>
                        <option value="axis">AXIS Bank.</option>
                        <option value="others">Others.</option>
                    </select>
                    <div class="expcvv">

                        <p style="font-weight: bold;" class="expcvv_text">Valid thru:</p>
                        <input type="date" class="inputbox" name="exp_date" id="exp_date" required />

                        <p style="font-weight: bold;" class="expcvv_text2">CVV:</p>
                        <input type="password" maxlength="3" class="inputbox" name="cvv" id="cvv" placeholder="xxx" required />
                    </div>
                    <p></p>
                    <button type="submit" class="btn btn-sm">Pay 1200</button>
                </form>
            </div>
        </div>
        </div>
    </section>

    <footer class="background">
        <p class="text-footer">© Copyright 2022 BonVoyage. All rights reserved.</p>
    </footer>
</body>

</html>