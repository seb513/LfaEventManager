<%@include file="../../header.jsp" %>

<h3>Add User</h3>
<form:form method="post" action="${SITE_URL}/user/save" modelAttribute="user">
    <div class="container">
        <div class="form-group">
            <form:label path="username">User Name:</form:label>
            <form:input path="username" type="text" required="required" placeholder="Enter user name" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="password">Password:</form:label>
            <form:input path="password" type="password" required="required" placeholder="Enter password" class="form-control"/>
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