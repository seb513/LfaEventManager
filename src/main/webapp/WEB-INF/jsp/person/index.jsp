<%@include file="../../header.jsp" %>

<h3>Person List</h3>


<div class="table-responsive">
    <table id="tableDemo" class="table table-bordered table-striped table-bordered">
        <div class="pull-right">
            <a href="${SITE_URL}/person/addPerson" class="btn btn-success">
                <span class="glyphicon glyphicon-plus"/>
            </a> 
        </div>
        <thead>
            <tr>
                <th>Name</th>
                <th>Added Date</th>
                <th>Modified Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <c:forEach var="p" items="${personList}">
            <tbody>
                <tr>
                    <td>${p.personName}</td>
                    <td>${p.addedDate}</td>
                    <td>${p.modifiedDate}</td>
                    <td>
                        <c:choose>
                            <c:when test="${p.status}">
                                <span class="label label-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="label label-danger">Inactive</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/person/editPerson?id=${p.id}" class="btn btn-info">
                            <span class="glyphicon glyphicon-pencil"/> edit
                        </a>
                        <a href="${pageContext.request.contextPath}/person/delete?id=${p.id}" class="btn btn-danger" onclick="return confirm('DELETE! Are You sure?')">
                            <span class="glyphicon glyphicon-trash"/> delete
                        </a>
                    </td>
                </tr>
            </tbody>
        </c:forEach>
    </table>
</div>

<%@include file="../../footer.jsp" %>