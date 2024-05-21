<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        h1{
            text-align: center;
            text-shadow: 2px 1px 2px black;
        }
        .errmsg{
            background: green;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
        body{
        	background-image: url("images/background2_crud.jpg");
			background-size: cover;
        }
    </style>
    </head>
    
    <body>
        <%@include file="header.jsp"%>
    <center>
        <% if (request.getAttribute("status") != null) {%>
        <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
        <%}%>
        <br>
        <div>
            <h1>INI8 LABS PVT LTD</h1>
        </div>
        <% if (session.getAttribute("uname") != null) {%>
        <h1>  Welcome <%= session.getAttribute("uname")%></h1>
        <h1>  Email:- <%= session.getAttribute("email")%></h1>
        <h1>  I'd:- <%= session.getAttribute("id")%></h1>
        
        <%}%>
    </center>
</body>
</html>