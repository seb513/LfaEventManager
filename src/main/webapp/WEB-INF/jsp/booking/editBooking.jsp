<%@include file="../../header.jsp" %>

<h3>Edit Booking</h3>
<form:form method="post" action="${SITE_URL}/booking/save?id=${bookings.id}" modelAttribute="booking">
    <div class="container">
        <div class="form-group">
            <form:label path="firstName">First Name:</form:label>
            <form:input path="firstName" type="text" value="${bookings.firstName}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="lastName">Last Name:</form:label>
            <form:input path="lastName" type="text" value="${bookings.lastName}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="phone">Phone:</form:label>
            <form:input path="phone" type="text" value="${bookings.phone}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="email">Email:</form:label>
            <form:input path="email" type="text" value="${bookings.email}"class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="address">Address:</form:label>
            <form:input path="address" type="text" value="${bookings.address}"class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="college">College/Organization:</form:label>
            <form:input path="college" type="text" value="${bookings.college}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Status:</label>
            <input type="checkbox" <c:if test="${bookings.status}">checked="checked"</c:if>/>
                <span>Active</span>
            </div>
            <input type="hidden" name="id" value="${bookings.id}">
        <a href="${SITE_URL}/booking/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>
