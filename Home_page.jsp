<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Java Project</title>
    <link href="css/HomePage.css" rel="stylesheet">
</head>

<body>
     <!--login page for doctor-->
    <div id="popup">
        <img onclick="toggle()" src="img/cancel.png" alt="">
        <span style="font-size: 20px;">Login</span>
        <h5 id="msg" style="padding: 6px;"></h5>
        <form action="loginServlet" method="post" id="login_form">
            <input type="text" placeholder="Username" name="username">
            <input type="password" placeholder="Password" name="password">
            <button class="button" type="submit" >Login</button>
        </form>
    </div>
     <!--login page end here-->
     
    <div id="full">
        <!--header nabar-->
        <header style="background-color: #0057b8; color: white;">
            <nav id="navbar">
                <ul class="ul">
                    <li class="list"><a style="color: white;" href="Home_page.jsp">Home</a></li>
                    <li class="list"><a style="color: white;" href="BookAppointment.jsp">Book Appointment</a></li>
                    <li class="list">Contact</li>
                    <li class="list">About</li>
                </ul>
            </nav>
            <button class="btn viewlist button" onclick="toggle()">Login</button>
        </header>
        <main>
            <div class="contain">
                <div class="img-container">
                    <img src="img/img-1.jpg" alt="">
                    <img src="img/img-2.jpg" alt="">
                    <img src="img/img-3.jpg" alt="">
                    <img src="img/img-4.jpg" alt="">
                </div>
            </div>
            <div class="content">
                <h1>Welcome to </h1>
                <img src="img/icon.png" alt="">
                <h1 id="cname">Suvidha Hospital</h1>
                <p>hospital, an institution that is built, staffed, and equipped for the diagnosis of disease; for the
                    treatment, both medical and surgical, of the sick and the injured; and for their housing during this
                    process. The modern hospital also often serves as a centre for investigation and for teaching</p>
                <button class="btn" type="button">Know More</button>
            </div>
            <div class="doctors">
                <h2>About</h2>
                <p>Hospitals complement and amplify the effectiveness of many other parts of the health system, providing continuous availability of services for acute and complex conditions.
                    They concentrate scarce resources within well-planned referral networks to respond efficiently to population health needs. They are an essential element of Universal Health
                    Coverage (UHC) and will be critical to meeting the Sustainable Development Goals (SDG).<br>
                    Hospitals are also an essential part of health system development. Currently, external pressures, health systems shortcomings and hospital sector 
                    deficiencies are driving a new vision for hospitals in many parts of the world. In this vision, they have a key role to play to support other healthcare providers and 
                    for community outreach and home-based services and are essential in a well-functioning referral network.<br>
                    Hospitals matter to people and often mark central points in their lives. They also matter to health systems by being instrumental for care coordination and integration. 
                    They often provide a setting for education of doctors, nurses and other health-care professionals and are a critical base for clinical research.</p>
                
            </div>
        </main>
        <footer style="background-color: black; color: white;">
            <span>Copyrights reserved</span>
        </footer>
    </div>

    <script type="text/javascript">
        function toggle(){
            var blur = document.getElementById('full');
            blur.classList.toggle('active');
            var popup = document.getElementById('popup');
            popup.classList.toggle('active');
        }
    </script>
    <script
        src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous">
    </script>
    <script>
        $(document).ready(function(){
            console.log("ready..");
            $("#login_form").on("submit", function (event){
                event.preventDefault();
                
                var f = $(this).serialize();
                $.ajax({
                    url: "loginServlet",
                    data: f,
                    type: 'POST',
                    
                    success: function(data, textStatus, jqXHR){

                        if(data.trim() === "YES"){
                            $('#msg').html("Successfully Login !!");
                            $("#msg").css("color", "green");
                            window.location.href = "practice.jsp";
                        }
                        else{
                            $('#msg').html("Wrong Credential !!");
                            $("#msg").css("color", "red");
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                        $('#msg').html("Wrong Credential!!");
                        $("#msg").css("color", "red");
                    }
                });
            });
        }); 
    </script>
</body>
</html>
