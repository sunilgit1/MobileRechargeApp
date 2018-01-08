<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<jsp:include page="../template/header.jsp" />

<style type="text/css">

 .menu1 h3
{
 font-family: "Brush Script MT";
  font-size: 30px;
  margin-left: 0px;
  margin-top: -50px;
} 
</style>

<body>

	<jsp:include page="../template/nav.jsp" />
	<div class="container">
<br/>
	<br/>
	<div class="menu1">
		<h3><b><u>User Details</u></b></h3>
		<h5>${ErrorMessage}</h5>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Gender</th>
						<th>DOB</th>
						<th>isAdmin</th>
						<th>Gmail</th>
						<th>ContactNumber</th>
						
					</tr>
				</thead>
				<body>
				<%-- <c:forEach items="${info}" var="info"> --%>
				<tr>
					<td>${fname}</td>
					<td>${lname}</td>
					<td>${gender}</td>
					<td>${DOB}</td>
					<td>${isAdmin}</td>
					<td>${gmail}</td>
					<td>${mobNo}</td>
					
					
				</tr>
</body>
</table>
</div>


</div>


</body>

</html>