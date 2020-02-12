<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Confirm</title>
</head>
<body>
<h2>Reservation Confirm</h2>
     First Name : ${reservation.firstName} <br>
     Last Name  : ${reservation.lastName} <br>
     Gender     : ${reservation.gender} <br>
     Meal :
     <ul>
        <c:forEach var="meal" items="${reservation.food}">
           <li>${meal}</li>
        </c:forEach>
     </ul>
      Leaving Form : ${reservation.cityFrom}
      Going To     : ${reservation.cityTo}
</body>
</html>