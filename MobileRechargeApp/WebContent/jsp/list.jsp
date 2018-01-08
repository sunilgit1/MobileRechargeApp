<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<jsp:include page="template/header.jsp" />

<style type="text/css">
 .menu1 h3
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-top: -50px;
} 
</style>

<body>
	<jsp:include page="template/nav.jsp" />

	<div class="container">

		<div class="menu1">
			<h3>
				<b><u>User List</u></b>
			</h3>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Gender</th>
						<th>ContactNumber</th>
						<th>DOB</th>
						<th>Gmail</th>
						<th>IsAdmin</th>
						<th>Password</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<body>
					<c:forEach items="${info}" var="info">
						<tr>
							<td>${info.fname}</td>
							<td>${info.lname}</td>
							<td>${info.gender}</td>
							<td>${info.mobNo}</td>
							<td>${info.DOB}</td>
							<td>${info.gmail}</td>
							<td>${info.isAdmin}</td>
							<td>${info.password}</td>
							<td>
								<%-- <a href="<c:url value='/delete/${info.regno}'/>">Delete</a> --%>
								<spring:url value="/delete/${info.mobNo}" var="deleteurl" />
								<button type="button" class="btn btn-danger"
									onclick="location.href='${deleteurl}'">Delete</button>
							</td>
							<td> 
					 <spring:url value="/edit1/${info.mobNo}" var="editurl"/> 
					<button type="button" class="btn btn-success"onclick="location.href='${editurl}'">Update</button></td> 

							<%-- <td>
					 <spring:url value="/details/${info.regno}" var="detailaURL"/> 
					<button type="button" class="btn btn-success"onclick="location.href='${detailaURL}'">Details</button></td>  --%>
						</tr>
					</c:forEach>
				</body>
			</table>
		</div>


	</div>

	<jsp:include page="template/footer.jsp" />
</body>

</html>