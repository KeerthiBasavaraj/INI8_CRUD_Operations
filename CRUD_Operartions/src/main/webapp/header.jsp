<!DOCTYPE html>
<html>
<head>
<title>Jsp file</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        ul {
            list-style-type: none;
            /width:100%;/ 
            margin: 0;
            padding: 10px;
            overflow: hidden;
            background-color: #123969;
        }

        li {
            float: right;
        }
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }
        .uname{
            margin-top: 14px;
            color: white;
            margin-right: 10px;
        }
        img{
			        
        }
    </style>
    </head>
    <body style="margin: 0;">
        <ul>
            <% if (session.getAttribute("uname") != null) {%>

            <li class="uname"><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i><%=session.getAttribute("uname")%></li>
            <li><a href="register?logout=yes">Logout</a></li>
            <li><a href="edit.jsp">Edit</a></li>
             <li><a href="delete.jsp">Delete</a></li>
            <li><a href="search.jsp">Search</a></li>
                <%} else {%>
            <li><a href="registration.jsp">Register</a></li>
            <li><a href="login.jsp">Login</a></li>
                <%}%>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li style="float:left"><img src="images/ini8_labs_logo.jpeg"></li>
        </ul>

</body>
</html>