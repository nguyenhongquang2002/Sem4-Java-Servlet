<%@ page import="com.example.t2009m_java.entity.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%
    List<Student> students = (List<Student>) request.getAttribute("list");
    if(students == null){
        students = new ArrayList<>();
    }
%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<ul>
    <%for (int i = 0; i < students.size(); i++) {
            Student student = students.get(i);%>
            <li><%=student.getFullName()%> - <%=student.getRollNumber()%> - <%=student.getStatus()%></li>
    <%}%>
</ul>
<form action="/register" method="post" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
    <h2 class="w3-center">Register</h2>

    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
        <div class="w3-rest">
            <input class="w3-input w3-border" name="username" type="text" placeholder="User Name">
        </div>
    </div>
    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
        <div class="w3-rest">
            <input class="w3-input w3-border" name="password" type="password" placeholder="Password">
        </div>
    </div>
    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
        <div class="w3-rest">
            <input class="w3-input w3-border" name="confirmPassword" type="password" placeholder="Confirm Password">
        </div>
    </div>

    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
        <div class="w3-rest">
            <input class="w3-input w3-border" name="fullName" type="text" placeholder="Full Name">
        </div>
    </div>

    <p class="w3-center">
        <button type="submit" class="w3-button w3-section w3-blue w3-ripple"> Save </button>
        <button type="reset" class="w3-button w3-section w3-blue w3-ripple">Reset</button>
    </p>
</form>

</body>
</html>