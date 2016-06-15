<%@include file="../../header.jsp" %>

<h3>User List</h3>


<div class="table-responsive">
    <table id="tableDemo" class="table table-bordered table-striped table-bordered">
        <div class="pull-right">
            <a href="${SITE_URL}/user/addUser" class="btn btn-success">
                <span class="glyphicon glyphicon-plus"/>
            </a> 
        </div>
        <thead>
            <tr>
                <th>User Name</th>
                <th>Password</th>
                <th>Added Date</th>
                <th>Modified Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <c:forEach var="m" items="${userList}">
            <tbody>
                <tr>
                    <td>${m.username}</td>
                    <td>${m.password}</td>
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
                        <a href="${pageContext.request.contextPath}/user/editUser?id=${m.id}" class="btn btn-info">
                            <span class="glyphicon glyphicon-pencil"/> edit
                        </a>
                        <a href="${pageContext.request.contextPath}/user/delete?id=${m.id}" class="btn btn-danger">
                            <span class="glyphicon glyphicon-trash"/> delete
                        </a>
                    </td>
                </tr>
            </tbody>
        </c:forEach>
    </table>
</div>

<%@include file="../../footer.jsp" %>