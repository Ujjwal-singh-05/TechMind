<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet"/>

</head>
<body>
<center>
<div id="wrapper">
 <div id="header">
   <h2>CRM-RelationShip ManegerApp</h2>
 </div>
</div>
<div id="container">
 <div id="content">
 <input type="button" value="add-customer" onclick="window.location.href='showForm'; return false;" class="add-button"/>
 <table>
 
 <tr>
 <th>Customer_id</th>
 <th>Customer_Name</th>
 <th>Customer_email</th>
 <th>Customer_address</th>
 <th>Action</th>
 <th>Action</th>
 </tr>

 <c:forEach var="customer" items="${customers}">
 <c:url var="updateLink" value="/customer/showFormForUpdate">
 <c:param name="customerId" value="${customer.id}"></c:param>
 </c:url>
 <c:url var="deleteLink" value="/customer/delete">
 <c:param name="customerId" value="${customer.id}"></c:param>
 </c:url>
 <tr>
 <td>${customer.id}</td>
 <td>${customer.name}</td>
 <td>${customer.email}</td>
 <td>${customer.address}</td>
 <td> <a href="${updateLink}">Update</a></td>
 <td> <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you wnat to delete')))return false;">Delete</a></td>
 </tr>
 </c:forEach>
 
 </table>
 </div>
</div>
</center>
</body>
</html>