
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix ="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Custom Login Page</title>

</head>
<body>
    <h3>Custom Login page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method = "POst">

        <c:if test = "${param.error != null}">
            <i>Sorry! you entered invalid username/password</i>
        </c:if>
        <c:if test = "${param.logout!= null}">
            <div>You have been logged out.</div>
        </c:if>
        <p>
            Username: <input type="text" name = "username"/>
        </p>
        <p>
            Password: <input type = "password" name="password"/>
        </p>
        <input type = "submit" value="Login"/>
    </form:form>
</body>
</html>
