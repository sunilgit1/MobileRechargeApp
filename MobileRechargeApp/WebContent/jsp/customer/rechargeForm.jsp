<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
 <jsp:include page="../template/UserHeader.jsp" />
 
<style type="text/css">
 .menu1 h3
{
 margin-left: 200px;
  margin-top: -40px;
  font-family: "Brush Script MT";
  font-size: 30px;
} 
</style>

<body>

	<div class="container">

		<div class="menu1">
			<h3>
				<b><u>Recharge Form</u></b>
			</h3>
		</div>
		<%--  <spring:url value="/home" var="homeURL" />  --%>
		<form action="${homeURL1}" class="form-horizontal" modelAttribute="fname" method="get">
			 <form:hidden path="transactionId" /> 
			 
			<div class="form-group">
				<label class="col-sm-2 control-label">ContactNo</label>
				<div class="col-sm-4">
					<input type="number" name="mobNum" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Operator</label>
				<div class="col-sm-4">
				<select name="operator" class="form-control" >
				<option value="0">--SELECT--</option>
				<option value="airtel">AIRTEL</option>
				<option value="docomo">DOCOMO</option>
				<option value="jio">JIO</option>
				<option value="idea">IDEA</option>
				<option value="bsnl">BSNL</option>
				<option value="vodafone">VODAFONE</option>
				</select>	
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Amount</label>
				<div class="col-sm-4">
					<input type="number" name="amount" class="form-control" 	>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">State</label>
				<div class="col-sm-4">
					<input type="text" name="state" class="form-control" >
				</div>
				<label form:errors path="state" cssClass="error"></label>
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