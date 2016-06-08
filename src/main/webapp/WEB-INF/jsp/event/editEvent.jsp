<%@include file="../../header.jsp" %>

<h3>Edit EventList</h3>
<form:form method="post" action="${SITE_URL}/event/save?id=${eventList.id}" modelAttribute="event">
    <div class="form-group">
        <form:label path="eventName">Name:</form:label>
        <form:input path="eventName" type="text" required="required" value="${eventList.eventName}" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="presenter">Presenter:</form:label>
        <form:input path="presenter" type="text" required="required" value="${eventList.presenter}" class="form-control"/>
    </div>
    <div class="form-group">
        <label>Description:</label>
        <textarea required="required" class="form-control">${eventList.description}</textarea>
    </div>
    <div class="form-group">
        <form:label path="startDate">Start Date:</form:label>
        <form:input path="startDate" type="date" required="required" value="${eventList.startDate}"  class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="endDate">End Date:</form:label>
        <form:input path="endDate" type="date" required="required" value="${eventList.endDate}"  class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="startTime">End Time:</form:label>
        <form:input path="startTime" type="time" required="required" value="${eventList.startTime}"  class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="endTime">End Time:</form:label>
        <form:input path="endTime" type="time" required="required" value="${eventList.endTime}"  class="form-control"/>
    </div>

    <div class="form-group">
        <form:label path="location">Location:</form:label>
        <form:input path="location" type="text" required="required" value="${eventList.location}" class="form-control"/>
    </div>
    <div class="form-group">
        <label>Status:</label>
        <input type="checkbox" name="status" <c:if test="${eventList.status}">checked = "checked"</c:if>/>
            <span>Active</span>
        </div>
        <input type="hidden" name="id" value="${eventList.id}">
    <a href="${SITE_URL}/event/index" class="btn btn-danger">Back</a>
    <form:button type="submit" class="btn btn-success">Save</form:button>
</form:form>

<%@include file="../../footer.jsp" %>
