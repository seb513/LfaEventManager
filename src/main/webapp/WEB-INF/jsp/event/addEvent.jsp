<%@include file="../../header.jsp" %>

<h3>Add Event</h3>
<form:form method="post" action="${SITE_URL}/event/save" modelAttribute="event">
    <div class="container">
        <div class="form-group">
        <form:label path="eventName">Event Name:</form:label>
        <form:input path="eventName" type="text" required="required" placeholder="Enter event name" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="presenter">Presenter:</form:label>
        <form:input path="presenter" type="date" required="required" placeholder="Enter presenter name" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="description">Description:</form:label>
        <form:textarea path="description" required="required" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="startDate">Start Date:</form:label>
        <form:input path="startDate" type="date" required="required" placeholder="Enter  start date" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="endDate">End Date:</form:label>
        <form:input path="endDate" type="date" required="required" placeholder="Enter  end date" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="startTime">Start Time:</form:label>
        <form:input path="startTime" type="time" required="required" placeholder="Enter  start time" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="endTime">Start Time:</form:label>
        <form:input path="endTime" type="time" required="required" placeholder="Enter  end time" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="location">Location:</form:label>
        <form:input path="location" type="text" required="required" placeholder="Enter the location" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="url">Url:</form:label>
        <form:input path="url" type="text" required="required" placeholder="Enter the url" class="form-control"/>
    </div>
    <div class="form-group">
        <form:label path="status">Status:</form:label>
        <form:label path="status" onclick="checked">
            <form:checkbox path="status"/>Active
        </form:label>
    </div>
    <a href="${SITE_URL}/event/index" class="btn btn-danger">Back</a>
    <form:button type="submit" class="btn btn-success">Save</form:button>
</form:form>

<%@include file="../../footer.jsp" %>
