<%@include file="../../header.jsp" %>

<h3>Edit Event List</h3>
<form:form method="post" action="${SITE_URL}/eventlist/save?id=${eventLists.id}" modelAttribute="eventlist">
    <div class="container">
        <div class="form-group">
            <form:label path="elName">Name:</form:label>
            <form:input path="elName" type="text" required="required" value="${eventLists.elName}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Status:</label>
            <input type="checkbox" name="status" <c:if test="${eventLists.status}">checked = "checked"</c:if>/>
                <span>Active</span>
            </div>
            <input type="hidden" name="id" value="${eventLists.id}">
        <a href="${SITE_URL}/eventlist/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>
