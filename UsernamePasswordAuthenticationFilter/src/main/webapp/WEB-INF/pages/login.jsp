<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href='<c:url value="../css/styles.css"></c:url>'></link>
<title>Login Page</title>
</head>
<body>

	<div class="errorblock">
		${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>


	<form action='<c:url value="j_spring_security_check"/>' method="post">
		<table>
			<tr>
				<td>Please enter username:</td>
				<td><input type="text" id="j_username" name="j_username"></input></td>
			</tr>
			<tr>
				<td>Please enter password:</td>
				<td><input type="text" id="j_password" name="j_password"></input></td>
			</tr>

			<tr>
				<td>What you want to view:</td>
				<td><select id="viewtype" name="viewtype">
						<option value="Reports">Reports</option>
						<option value="Rawdata">Rawdata</option>
				</select></td>
			</tr>
			<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>