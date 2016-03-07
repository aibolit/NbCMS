<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        <div>
            <g:form action="tryLogin" style="padding-left:200px">
                <label>Email</label>&nbsp;<input type="email" name="email" value="${params.email}" > <br />
                <label>Password</label>&nbsp;<input type="password" name="password" /> <br />
                <input type="submit" value="Login"/>

            </g:form>
        </div>
    </body>
</html>
