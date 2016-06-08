<%@include file="../../header.jsp" %>

<h3>Event List</h3>


<div class="table-responsive">
    <table id="tableDemo" class="table table-bordered table-striped table-bordered">
        <div class="pull-right">
            <a href="${SITE_URL}/event/addEvent" class="btn btn-success">
                <span class="glyphicon glyphicon-plus"/>
            </a> 
        </div>
        <thead>
            <tr>
                <th>Event Name</th>
                <th>Presenter</th>
                <!--                <th>Description</th>-->
                <th>Start Date</th>
                <th>End Date</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Location</th>
                <th>Url</th>
                <th>Added Date</th>
                <th>Modified Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <c:forEach var="m" items="${eventList}">
            <tbody>
                <tr>
                    <td>${m.eventName}</td>
                    <td>${m.presenter}</td>
<!--                    <td>${m.description}</td>-->
                    <td>${m.startDate}</td>
                    <td>${m.endDate}</td>
                    <td>${m.startTime}</td>
                    <td>${m.endTime}</td>
                    <td>${m.location}</td>
                    <td><a href="https://www.facebook.com/leapfrogacademy/?fref=ts" target="_blank">${m.url}</a></td>
                    <td>${m.addedDate}</td>
                    <td>${m.modifiedDate}</td>

                    <td>
                        <c:choose>
                            <c:when test="${m.status}">
                                <span class="label label-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="label label-danger">Inactive</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/event/editEvent?id=${m.id}" class="btn btn-info btn-xs">
                            <span class="glyphicon glyphicon-pencil"/> edit
                        </a>
                        <a href="${pageContext.request.contextPath}/event/delete?id=${m.id}" class="btn btn-danger btn-xs" onclick="return confirm('DELETE! Are You sure?')">
                            <span class="glyphicon glyphicon-trash"/> delete
                        </a>
                    </td>
                </tr>
            </tbody>
        </c:forEach>
    </table>
</div>

<%@include file="../../footer.jsp" %>