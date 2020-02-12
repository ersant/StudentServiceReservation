<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form:form action="submitForm" modelAttribute="reservation">
     First Name <form:input path="firstName"/>
     <br><br>
     Last Name <form:input path="lastName"/>
     <br><br>
     Gender 
     Male <form:radiobutton path="Gender" value="Male"/>
     FeMale<form:radiobutton path="Gender" value="Female"/>
     <br><br>
     Meal 
     BreakFast<form:checkbox path="food" value="BreakFast"/>
     Lunch <form:checkbox path="food" value="Lunch"/>
     Dinner <form:checkbox path="food" value="Dinner"/><br><br>
     Leaving Form : <form:select path="cityFrom">
       <form:option value="Mumbai" label="Mumbai"></form:option>
       <form:option value="Goa" label="Goa"></form:option>
       <form:option value="Pune" label="Pune"></form:option>
       <form:option value="Kolhapoor" label="Kolhapoor"></form:option>
       <form:option value="Nashik" label="Nashik"></form:option>
       <form:option value="Nagpoor" label="Nagpoor"></form:option>
      </form:select>
      <br><br>
      Going to :
      <form:select path="cityTo">
       <form:option value="Mumbai" label="Mumbai"></form:option>
       <form:option value="Goa" label="Goa"></form:option>
       <form:option value="Pune" label="Pune"></form:option>
       <form:option value="Kolhapoor" label="Kolhapoor"></form:option>
       <form:option value="Nashik" label="Nashik"></form:option>
       <form:option value="Nagpoor" label="Nagpoor"></form:option>
      </form:select>
     <input type="submit" value="Reservestion"/>
     </form:form>
</body>
</html>