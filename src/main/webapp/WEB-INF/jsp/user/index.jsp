<%@include file="../../header.jsp" %>

<h3>Meetup List</h3>


<div class="table-responsive">
    <table id="tableDemo" class="table table-bordered table-striped table-bordered">
        <div class="pull-right">
            <a href="${SITE_URL}/meetup/addMeetup" class="btn btn-success">
                <span class="glyphicon glyphicon-plus"/>
            </a> 
        </div>
        <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Presenter</th>
                <th>Added Date</th>
                <th>Modified Date</th>
                <th>Location</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <c:forEach var="m" items="${meetupList}">
            <tbody>
                <tr>
                    <td>${m.name}</td>
                    <td>${m.description}</td>
                    <td>${m.presenter}</td>
                    <td>${m.addedDate}</td>
                    <td>${m.modifiedDate}</td>
                    <td>${m.location}</td>
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
                        <a href="${pageContext.request.contextPath}/meetup/editMeetup?id=${m.id}" class="btn btn-info">
                            <span class="glyphicon glyphicon-pencil"/> edit
                        </a>
                        <a href="${pageContext.request.contextPath}/meetup/delete?id=${m.id}" class="btn btn-danger" onclick="return confirm('DELETE! Are You sure?')">
                            <span class="glyphicon glyphicon-trash"/> delete
                        </a>
                    </td>
                </tr>
            </tbody>
        </c:forEach>
    </table>
</div>

<%@include file="../../footer.jsp" %>