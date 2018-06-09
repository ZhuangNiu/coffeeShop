<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration</title>
</head>
<body>
    ${response}
    <form:form method="POST" modelAttribute="person" action="/user">

        <div class="form-group">
            <label >Enter Password</label>
            <form:password path="password"/>
        </div>

        <div class="form-group">
            <label >Email address</label>
            <form:input path="email"/>
        </div>
        <div class="form-group">
            <label >First Name</label>
            <form:input path="firstName"/>
        </div>
        <div class="form-group">
            <label >Last Name</label>
            <form:input path="lastName"/>
        </div>

        <div class="form-group">
            <label >Phone No</label>
            <form:input path="phone"/>
        </div>
        <div class="form-group">
            <label >City </label>
            <form:input path="address.city"/>
        </div>

        <div class="form-group">
            <label >State</label>
            <form:input path="address.state"/>
        </div>
        <div class="form-group">
            <label >Country</label>
            <form:input path="address.country"/>
        </div>
        <div class="form-group">
            <label >Zip Code</label>
            <form:input path="address.zipcode"/>
        </div>
        <button type="submit">Submit</button>
    </form:form>

</body>
</html>