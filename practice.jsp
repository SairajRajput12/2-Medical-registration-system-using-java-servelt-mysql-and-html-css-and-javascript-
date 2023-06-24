<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Project</title>
        <link href="css/DoctorPage.css" rel="stylesheet">
</head>
<body>
    <header style="background-color: #0057b8; color: white;height: 56px;">
        <nav id = "navbar">
            <ul class="ul">
            <li class="list">Appointments</li>
            </ul>
        </nav>
        <button class="btn loginbtn viewlist" onclick="log_out()" >Logout</button>
        
    </header>
    <main>
        
    </main>
    <footer>
        <span>Copyrights reserved</span>
    </footer>
    
    <!--added jQuery-->
    <script
        src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous">
    </script>
    
    <script>
        function log_out(){
            if(confirm("Do you want LogOut..") == true){
                window.location.href = "Home_page.jsp";
            }
        }
        
        $(document).ready(function(){
            console.log("ready..");
            $("#myform").on("submit", function (event){
                event.preventDefault();
                
                var f = $(this).serialize();
                console.log(f);
                $.ajax({
                    url: "NewServlet",
                    data: f,
                    type: 'POST',
                    
                    success: function(data, textStatus, jqXHR){
                        console.log(data);
                        if(data.trim() === "done"){
                            $('#msg').html("Successfully Added !!");
                            $('#msg').addClass('green-text');
                        }
                        else{
                            $('#msg').html("Something went wrong !!");
                            $('#msg').addClass("red-text");
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                        $('#msg').html("Something went wrong !!");
                        $('#msg').addClass("red-text");
                    }
                });
            });
        });
    </script>
</body>
</html>





