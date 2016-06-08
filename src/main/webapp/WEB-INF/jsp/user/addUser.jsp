<%@include file="../../header.jsp" %>

<h3>Add User</h3>
<form:form method="post" action="${SITE_URL}/user/save" modelAttribute="user">
    <div class="container">
        <div class="form-group">
            <form:label path="name">Name:</form:label>
            <form:input path="name" type="text" required="required" placeholder="Enter user name" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="description">Description:</form:label>
            <form:textarea path="description" required="required" class="form-control" rows="3"/>
        </div>
        <div class="form-group">
            <form:label path="presenter">Presenter:</form:label>
            <form:input path="presenter" type="text" required="required" placeholder="Enter presenter name" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="location">Location:</form:label>
            <form:input path="location" type="text" required="required" placeholder="Enter the location" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="status">Status:</form:label>
            <form:label path="status" onclick="checked">
                <form:checkbox path="status"/> Active
            </form:label>
        </div>
        <a href="${SITE_URL}/user/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>>
</form:form>

<%@include file="../../footer.jsp" %>