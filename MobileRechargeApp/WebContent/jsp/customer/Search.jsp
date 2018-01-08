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
<style type="text/css">
.error {
	color: red;
}
 .menu1 h3
{
 font-family: "Brush Script MT";
  font-size: 30px;
  margin-left: 200px;
  margin-top: -50px;
} 
</style>
</head>
<body>
 <jsp:include page="../template/nav.jsp" />
	<div class="container">
	<br/>
	<br/>
	<div class="menu1">
		<h3><b><u>Search User</u></b></h3>
		<%--  <h5>${ErrorMessage}</h5>  --%>
			
			</div>
		<form action=search class="form-horizontal" method="get">
			<!-- <form:hidden path="id" /> -->
			 <div class="form-group">
				<label class="col-sm-2 control-label">Search</label>
				<div class="col-sm-4">
					<input type="number" name="mobNo" class="form-control"  placeholder="Enter MobileNumber">
				</div>
				<label form:errors path="regno" cssClass="error"></label>
			</div> 
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="Search">
					
				</div>
			</div>

		</form>



	</div>

</body>
</html>