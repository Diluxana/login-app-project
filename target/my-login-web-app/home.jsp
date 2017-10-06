<%--
  Created by IntelliJ IDEA.
  User: diluxana
  Date: 9/8/17
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<html>
<link  href="logout.css" rel="stylesheet" type='text/css'>
<body style="background-color: lightblue;">


<form name="form-login" method="post" action="index.jsp">
    <h1>Welcome my login-app</h1>
    <input type="submit" value="logout">
    <h2>cookies</h2>

</form>

</body>
</html>
<%
    Cookie[] cookies = null;
    cookies = request.getCookies();

    if(cookies !=null) {

            for (int i = 0; i < cookies.length; i++)
            {
                if(cookies[i].getName().equals("datr"))
                {
                    out.print("name: " + cookies[i].getName() + ",");
                    out.print("name: " + cookies[i].getValue() + "</br>");
                }
            }
    }
    else
    {
        out.println("No cookies");
    }
%>