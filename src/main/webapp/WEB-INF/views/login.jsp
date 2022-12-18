<%--
  Created by IntelliJ IDEA.
  User: maseokjae
  Date: 2022/12/09
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>
        <style>
            img, label {display: inline-block;}
            label{width:130px}
            button{background-color: blue; color:white; font-size: 15px}

            #first {
                width:100%;
                text-align: center;
                padding-top: 100px;
            }
        </style>
    </head>
    <body>
        <div id="first">
            <img src='../img/HGU_Market.jpg' height="300">
            <form method="post" action="loginOk">
                <div>
                    <label>User ID: </label>
                    <input type='text' name='userid'/>
                </div>
                <div>
                    <label>Password: </label>
                    <input type='password' name='password'/>
                </div>
                <button type='submit'>login</button>
            </form>
        </div>
    </body>
</html>
