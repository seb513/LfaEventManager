<%@include file="../../header.jsp" %>

<h3>Edit Person</h3>
<form:form method="post" action="${SITE_URL}/person/save?id=${persons.id}" modelAttribute="person">
    <div class="container">
        <div class="form-group">
            <form:label path="personName">Name:</form:label>
            <form:input path="personName" type="text" required="required" value="${persons.personName}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Status:</label>
            <input type="checkbox" name="status" <c:if test="${persons.status}">checked = "checked"</c:if>/>
                <span>Active</span>
            </div>
            <input type="hidden" name="id" value="${persons.id}">
        <a href="${SITE_URL}/person/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>