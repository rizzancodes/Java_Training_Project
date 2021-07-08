<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>

<link rel="stylesheet" href="stylesheet/stylesheet.css">

<meta charset="ISO-8859-1">


<title>Employee Register Form</title>

<script>

<%-- //console.log("<%= request.getContextPath() %>/EmployeeRegistration");
console.log("${contextPath}/resource/bootstrap.min.css"); --%>

</script>

</head>
<body>
 <div align="center">
  <h1>Employee Register Form</h1>
  <form action="<%= request.getContextPath() %>/EmployeeRegistration" method="post" id="myForm">
   
   
    <label>
        <p class="label-txt">ENTER YOUR FIRST NAME</p>
        <input type="text" name="firstName" class="input">
        <div class="line-box">
          <div class="line"></div>
        </div>
      </label>

      
    <label>
        <p class="label-txt">ENTER YOUR LAST NAME</p>
        <input type="text" name="lastName" class="input">
        <div class="line-box">
          <div class="line"></div>
        </div>
      </label>

      
    <label>
        <p class="label-txt">ENTER YOUR USERNAME</p>
        <input type="text" name="username" class="input">
        <div class="line-box">
          <div class="line"></div>
        </div>
      </label>


      <label>
        <p class="label-txt">ENTER YOUR PASSWORD</p>
        <input type="password" name="password" class="input">
        <div class="line-box">
          <div class="line"></div>
        </div>
      </label>

      <label>
        <p class="label-txt">ENTER YOUR ADDRESS</p>
        <input type="text" name="address" class="input">
        <div class="line-box">
          <div class="line"></div>
        </div>
      </label>

      <label>
        <p class="label-txt">ENTER YOUR CONTACT</p>
        <input type="number" name="contact" class="input">
        <div class="line-box">
          <div class="line"></div>
        </div>
      </label>

      




      
      <button type="submit">Submit</button>
    
  </form>
 </div>
 
 
 <script src="script/index.js"></script>
</body>
</html>