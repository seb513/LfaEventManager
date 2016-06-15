<%@include file="../../header.jsp" %>

<h3>Edit User</h3>
<form:form method="post" action="${SITE_URL}/user/save?id=${userList.id}" modelAttribute="user">
    <div class="container">
        <div class="form-group">
            <form:label path="username">Name:</form:label>
            <form:input path="username" type="text" required="required" value="${userList.username}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="password">Password:</form:label>
            <form:input path="password" type="password" required="required" value="${userList.password}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Status:</label>
            <input type="checkbox" <c:if test="${userList.status}">checked="checked"</c:if>/>
            <span>Active</span>
        </div>
        <input type="hidden" name="id" value="${userList.id}">
        <a href="${SITE_URL}/user/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>