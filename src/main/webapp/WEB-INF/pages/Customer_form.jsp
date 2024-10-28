<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/add-customer-style.css" type="text/css" rel="stylesheet">
</head>
<body>
<center>
<div id="wrapper">
 <div id="header">
   <h2>CRM-RelationShip ManegerApp</h2>
 </div>
<div id="container">
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" method="post" modelAttribute="customer">
			
			<!-- need to associate this data with customer id -->
			<form:hidden path="id"/>
		
			<table>
				<tbody>
					<tr>
						<td>
							First Name
						</td>
						<td>
							<form:input path="name"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Email
						</td>
						<td>
							<form:input path="email"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Address
						</td>
						<td>
							<form:input path="address"/>
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
							<input type='submit' value='save' class='save'/>
						</td>
					</tr>
				
				</tbody>
			</table>	
		</form:form>
	</div>
	
	<div style='clear;both;'>
		<p>
			<a href='${pageContext.request.contextPath}/customer/list'>Back to List</a>
		</p>
	</div>
 </center>
</body>
</html>