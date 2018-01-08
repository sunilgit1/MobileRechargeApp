
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Bootstrap -->
    
     <spring:url value= "resources/css/bootstrap.min.css" var="bootstrapURL"/>
    <spring:url value= "resources/css/mytemplate.css" var="mytemplateURL"/>
    
    <link href="${bootstrapURL}" rel="stylesheet">
     <link href="${mytemplateURL}" rel="stylesheet">

<spring:url value="/userhome" var="homeURL1" /> 
<spring:url value="/viewProfile" var="viewURL" />
 <spring:url value="/recharge" var="rechargeURL" />
 <spring:url value="/logout" var="LogOut" />



<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span><span
					class="icon-bar"></span>

			</button>
			<a class="navbar-brand" href="#">your project</a>
		</div>

		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="${homeactive}"><a href="${homeURL1}">Home</a></li>
				<%-- <li class="dropdown ${customerActive}"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Customer<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class=""><a href="">Customer List</a></li>
						<li class=""><a href="">Add New Customer</a></li>
					</ul> --%>	</li>	
				<li class="${customerViewActive}"><a href="${viewURL}">My Profile</a></li>
				<li class="${customerRecargeActive}"><a href="${rechargeURL}">Mobile Recharge</a></li>
				<%-- <li class="${customerSearchActive}"><a href="${searchURL}">Search User</a></li> --%>

			</ul>
			 <ul class="nav navbar-right">
			<li class="${customerlogActive}"><a href="${logoutURL}"><font color="red" size="4px"><b>LogOut</a></font></a></li>
			</ul>
		</div>
	</div>
</nav>