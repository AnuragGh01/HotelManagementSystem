<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment</title>
    <link rel="stylesheet" href="./css/payment.css" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="shortcut icon" href="./images/clipart1693714.png" type="image/x-icon" />
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
    </nav>

    <section class="firstsection">
        <div class="box-main">
            <div class="firstHalf">
                <form action="" method="post">
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
                    <button onclick="location.href='paysuccess.jsp'" type="submit" class="btn btn-sm">Confirm Payment</button>
                </form>
            </div>
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