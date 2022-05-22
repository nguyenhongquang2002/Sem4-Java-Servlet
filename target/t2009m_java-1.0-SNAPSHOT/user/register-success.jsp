<%@ page import="com.example.t2009m_java.entity.Account" %><%
    Account account = (Account)request.getAttribute("account");
%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container w3-green">
    <h2 style="text-shadow:1px 1px 0 #444">Register success</h2>
    <div>UserName: <%= account.getUsername()%> </div>
    <div>FullName: <%= account.getFullName()%> </div>
</div>

</body>
</html>
