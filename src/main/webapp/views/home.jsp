<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LogIn</title>
</head>
<body>
	<%-- You can choose any presentation framework that could be integrated with
	Spring
	<p>
	<p>
		The only user is "<b>super</b>" and the password is "<b>pw</b>"
	<p>
		<a href="<c:url value="/secure" />"> Go to Secure Area </a> --%>
		
	<form action="" method="POST">
		<div>
	        <label>Email address</label>
	        <input type="text" name="email"/>
	    </div>
	    <div>
	        <label>Enter Password</label>
	        <input type="password" name="pwd">
	    </div>
	    <div>
       		<button type="submit">Submit</button>
        </div>
       
   </form>
</body>
</html>