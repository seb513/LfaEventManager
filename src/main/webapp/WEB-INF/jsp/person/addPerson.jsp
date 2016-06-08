<%@include file="../../header.jsp" %>

<h3>Add Person</h3>
<form:form method="post" action="${SITE_URL}/person/save" modelAttribute="person">
    <div class="container">
        <div class="form-group">
            <form:label path="personName">Name:</form:label>
            <form:input path="personName" type="text" required="required" placeholder="Enter person name" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="status">Status:</form:label>
            <form:label path="status" onclick="checked">
                <form:checkbox path="status"/> Active
            </form:label>
        </div>
        <a href="${SITE_URL}/person/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>