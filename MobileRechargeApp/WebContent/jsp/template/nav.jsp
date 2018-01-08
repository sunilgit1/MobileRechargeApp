
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/home" var="homeURL" />
<spring:url value="/add" var="addURL" />
<spring:url value="/load" var="loadURL" />
<spring:url value="/search" var="searchURL" />
<spring:url value="/logout" var="logoutURL" />


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
				<li class="${homeactive}"><a href="${homeURL}">Home</a></li>
				<%-- <li class="dropdown ${customerActive}"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Customer<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class=""><a href="">Customer List</a></li>
						<li class=""><a href="">Add New Customer</a></li>
					</ul> --%>	</li>	
				<li class="${customerListActive}"><a href="${loadURL}">User List</a></li>
				<li class="${customerSearchActive}"><a href="${searchURL}">Search User</a></li>

			</ul>
			 <ul class="nav navbar-right">
			<li class="${customerlogActive}"><a href="${logoutURL}"><font color="red" size="4px"><b>LogOut</a></font></a></li>
			</ul>
		</div>
	</div>
</nav>