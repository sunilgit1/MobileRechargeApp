
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/home" var="homeURL" />
<spring:url value="/login" var="loginURL" />


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
				<li class="${homeactive}"><a href="">Home</a></li>
				<li class="${customerLoginActive}"><a href="${loginURL}">LogIn</a></li>
					</li>

			</ul>
		</div>
	</div>
</nav>