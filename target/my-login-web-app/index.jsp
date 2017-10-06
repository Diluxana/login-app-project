<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Day 001 Login Form</title>


    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

    <link  href="style.css" rel="stylesheet" type='text/css'>



</head>

<body style="background-color: lightblue;">
<div class="login-wrap">
    <form method="post" action="">
        <div>

        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
            <div class="login-form">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">Username</label>
                        <input id="username" type="text" class="input" name="username">
                    </div>

                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="password" type="password" class="input" data-type="password" name="password">
                    </div>
                    <div class="checkbox">
                        <label style="text-align: center; margin: auto">
                            <input type="checkbox" name="Secure" value="Secure"> Secure_Flag
                            <input type="checkbox" name="Http_only" value="Http_only"> HTTPOnly_Flag
                        </label>
                    </div><br>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> Keep me Signed in</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign In" name="submit">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#forgot">Forgot Password?</a>
                    </div>
                </div>

                    <div class="hr"></div>

                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>

<%
    if(request.getParameter("username") != null) {
        String Secure = request.getParameter("Secure");
        String Http_only = request.getParameter("Http_only");
        String username = request.getParameter("username");
        String password= request.getParameter("password");
        if ("admin" .equals(username)&& "pass".equals(password)) {
            out.println("Login");

            response.setHeader("Refresh","0");
            Cookie uname = new Cookie("datr", request.getParameter("username"));
            uname.setMaxAge(3600);
            uname.setDomain("localhost");
            uname.setPath("/login-app");

            if(Secure != null)
                uname.setSecure(true);
            if(Http_only != null)
                uname.setHttpOnly(true);

            response.addCookie(uname);
            response.sendRedirect("home.jsp");

        }
        else
        {
            out.println("Error");
        }
    }
%>


