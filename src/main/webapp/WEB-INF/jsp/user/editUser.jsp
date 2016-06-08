<%@include file="../../header.jsp" %>

<h3>Edit Meetup</h3>
<form:form method="post" action="${SITE_URL}/meetup/save?id=${meetups.id}" modelAttribute="meetup">
    <div class="container">
        <div class="form-group">
            <form:label path="name">Name:</form:label>
            <form:input path="name" type="text" required="required" value="${meetups.name}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="description">Description:</form:label>
            <form:textarea path="description" required="required" class="form-control" />
        </div>
        <div class="form-group">
            <form:label path="presenter">Presenter:</form:label>
            <form:input path="presenter" type="text" required="required" value="${meetups.presenter}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="location">Location:</form:label>
            <form:input path="location" type="text" required="required" value="${meetups.location}" class="form-control"/>
        </div>
        <div class="form-group">
            <form:label path="status">Status:</form:label>
            <form:label path="status" onclick="checked">
                <form:checkbox path="status"/> Active
            </form:label>
        </div>
        <input type="hidden" name="id" value="${meetups.id}">
        <a href="${SITE_URL}/meetup/index" class="btn btn-danger">Back</a>
        <form:button type="submit" class="btn btn-success">Save</form:button>
        </div>
</form:form>

<%@include file="../../footer.jsp" %>