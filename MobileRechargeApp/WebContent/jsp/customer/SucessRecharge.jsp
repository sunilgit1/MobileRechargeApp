<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hi,<b>${form.mobNum()} Top Up Recharge Successfull.</b>Rs:<strong>${form.amount()}</strong>
	for ur <strong>${form.operator()}</strong>
	TransactionID:${form.transactionId()}</h1>
</body>
</html>