<%@include file="../../header.jsp" %>

<h3>Add Event List</h3>
<form:form method="post" action="${SITE_URL}/eventlist/save" modelAttribute="eventlist">
    <div class="container">
        <div class="form-group">
            <form:label path="elName">Event Name:</form:label>
            <form:input path="elName" type="text" required="required" placeholder="Enter eventlist name" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="status">Status:</form:label>
            <form:label path="status" onclick="checked">
                <form:checkbox path="status"/> Active
            </form:label>
        </div>
        <a href="${SITE_URL}/eventlist/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>