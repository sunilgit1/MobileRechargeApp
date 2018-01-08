<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
 <jsp:include page="../template/header.jsp" />
 
<style type="text/css">
 .menu1 h3
{
 margin-left: 200px;
  margin-top: -50px;
  font-family: "Brush Script MT";
  font-size: 30px;
} 
</style>

<body>

 <jsp:include page="../template/HomeHeader.jsp" />
	<div class="container">

		<div class="menu1">
			<h3>
				<b><u>Registration Form</u></b>
			</h3>
		</div>
		<%--  <spring:url value="/home" var="homeURL" />  --%>
		<form action="${addURL}" class="form-horizontal" modelAttribute="fname" method="get">
			<!-- <form:hidden path="regno" /> -->
			 <div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">
					<input type="text" name=fname class="form-control" >
				</div>
			</div> 
			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					<input type="text" name="lname" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <input type="radio" name="gender" value="male" > MALE
					</label> <label class="radio-inline"> <input type="radio"
						name="gender"  value="female" >
						FEMALE
					</label>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">DOB</label>
				<div class="col-sm-4">
					<input type="date" name="DOB" class="form-control" id="regno">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">ContactNumber</label>
				<div class="col-sm-4">
					<input type="number" name="mobNo" class="form-control" 	>
				</div>
			</div>
			
			  <div class="form-group">
				<label class="col-sm-2 control-label">Gmail</label>
				<div class="col-sm-4">
					<input type="gmail" name="gmail" class="form-control" >
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">IsAdmin</label>
				<div class="col-sm-4">
				<select name="isAdmin" class="form-control" >
				<option value="0">--SELECT--</option>
				<option value="YES">YES</option>
				<option value="NO">NO</option>
				</select>	
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="password" name="password" class="form-control" >
				</div>
				<label form:errors path="password" cssClass="error"></label>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="Submit">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form>


	</div>
 <jsp:include page="../template/footer.jsp"></jsp:include> 

</body>

</html>