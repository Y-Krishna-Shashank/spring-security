<%--
  Created by IntelliJ IDEA.
  User: ykris
  Date: 20-05-2022
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix ="security" uri = "http://www.springframework.org/security/tags"%>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<h1>Welcome to Home Page</h1>
<p>
    User: <security:authentication property="principal.username"/>
    <br><br>
    Role(s): <security:authentication property="principal.authorities"/>
</p>
<security:authorize access ="hasRole('MANAGER')">
<p>
    <a href="${pageContext.request.contextPath}/leaders
">Leadership Meeting</a>
    (Only for manager peeps)
</p>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="${pageContext.request.contextPath}/systems
">IT Systems Meeting</a>
    (Only for admin people)
</p>
    </security:authorize>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="Logout"/>
</form:form>


</body>
</html>
