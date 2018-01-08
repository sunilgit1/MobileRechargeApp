<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<html>
<jsp:include page="../template/header.jsp" />
<body>

	<jsp:include page="../template/nav.jsp" />
	<div class="container">

		<h3>Update Customer</h3>
		<%-- <spring:url value="/update" var="updateURL" /> --%>
		<sf:form method="get" modelAttribute="info" class="form-horizontal" action="add" >
			<!-- <form:hidden path="userId" /> -->

			<div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">
					<sf:input type="text" path="fname" class="form-control"
						placeholder="First Name" />
					<sf:errors path="fname" element="em" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					<sf:input type="text" path="lname" class="form-control"
						placeholder="Last Name" />
					<sf:errors path="lname" element="em" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Gmail</label>
				<div class="col-sm-4">
					<sf:input type="text" path="gmail" class="form-control"
						placeholder="Gmail" />
					<sf:errors path="gmail" element="em" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">--Select--</label>
				<div class="col-sm-4">
					<label class="radio-inline"> <sf:radiobutton path="gender"
							value="MALE" checked="checked" /> MALE
					</label> <label class="radio-inline"> <sf:radiobutton path="gender"
							value="FEMALE" /> FEMALE
					</label>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">DOB</label>
				<div class="col-sm-4">
					<sf:input type="date" path="DOB" class="form-control"
						placeholder="DOB" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">ContactNumber</label>
				<div class="col-sm-4">
					<sf:input type="text" path="mobNo" class="form-control"
						placeholder="XXXXXXXXXX" maxlength="10" />
					<sf:errors path="mobNo" cssClass="help-block" element="em" />
				</div>
			</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">Select Role</label>
		<div class="col-sm-4">
			<label class="radio-inline"> <sf:radiobutton path="isAdmin"
					value="USER" checked="checked" /> User
			</label> <label class="radio-inline"> <sf:radiobutton path="isAdmin"
					value="ADMIN" /> Admin
			</label>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">Password</label>
		<div class="col-sm-4">
			<sf:input type="password" path="password" class="form-control"
				placeholder="Password" />
			<sf:errors path="password" cssClass="help-block" element="em" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<input class="btn btn-default" type="submit" value="Submit">
			<input class="btn btn-default" type="submit" value="Reset">
		</div>
	</div>

	</sf:form>


	</div>
	<jsp:include page="../templates/footer.jsp"></jsp:include>

</body>

</html>