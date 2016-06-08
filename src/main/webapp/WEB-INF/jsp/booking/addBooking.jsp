<%@include file="../../header.jsp" %>

<h3>Add Booking</h3>
<form:form method="post" action="${SITE_URL}/booking/save" modelAttribute="booking">
    <div class="container">
        <div class="form-group">
            <form:label path="firstName">First Name:</form:label>
            <form:input path="firstName" type="text" required="required" placeholder="Enter first name" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="lastName">Last Name:</form:label>
            <form:input path="lastName" type="text" required="required" placeholder="Enter last name" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="phone">Phone:</form:label>
            <form:input path="phone" type="text" required="required" placeholder="Enter phone number" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="email">Email:</form:label>
            <form:input path="email" type="text" required="required" placeholder="Enter email" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="address">Address:</form:label>
            <form:input path="address" type="text" required="required" placeholder="Enter address" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="college">College/Organization:</form:label>
            <form:input path="college" type="text" required="required" placeholder="Enter college" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="status">Status:</form:label>
            <form:label path="status" onclick="checked">
                <form:checkbox path="status"/> Active
            </form:label>
        </div>
        <a href="${SITE_URL}/booking/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>