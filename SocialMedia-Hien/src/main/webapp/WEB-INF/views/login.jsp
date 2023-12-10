<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <h1>Login</h1>
            <form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="userdto">
                <div class="form-group">
                    <label class="control-label" for="Email"> Email </label>
                    <input type="text" id="Email" class="form-control" name="email" required autofocus="autofocus"/>
                </div>
                <c:if test="${param.emailwrong}">
                    <div class="alert alert-info"> Your email is not correct</div>
                </c:if>
                <div class="form-group">
                    <label class="control-label" for="Password"> Password </label>
                    <input type="password" id="Password" class="form-control" name="password" required/>
                </div>
                <c:if test="${param.passwordwrong}">
                    <div class="alert alert-info"> Your password is not correct</div>
                </c:if>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Login</button>
                    <span>Your don't have an account? <a href="<%=request.getContextPath()%>/registration">Registration here</a></span>

                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
