<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../template/header.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


    
    <spring:url value="/add" var="addURL" />
    
    <link href="${bootstrapURL}" rel="stylesheet">
     <link href="${mytemplateURL}" rel="stylesheet">
<style type="text/css">
.error {
	color: red;
}
 .menu1 h3,h5
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-left: 200px;
  margin-top: 0px;
} 
</style>
</head>
<body>
	<jsp:include page="../template/HomeHeader.jsp" />
	<div class="container">
	
		<div class="menu1">
		<h3><b><u>LogIn Form</u></b></h3>
		<h5>${ErrorMessage}</h5>
		</div>
		
		<form action="login" class="form-horizontal" method="post">
			<form:hidden path="id" />
			<div class="form-group">
				<label class="col-sm-2 control-label">Gmail</label>
				<div class="col-sm-4">
					<input type="text" name="gmail" class="form-control" id="id">
				</div>
				<label form:errors path="gmail" cssClass="error"></label>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="text" name="password" class="form-control" id="id">
				</div>
				<label form:errors path="password" cssClass="error"></label>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
						<label> <a href="${addURL}"><b>RegistrationForm</b></a>
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="SignIn">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form>
		<jsp:include page="../template/footer.jsp"></jsp:include> 
</body>
</html>