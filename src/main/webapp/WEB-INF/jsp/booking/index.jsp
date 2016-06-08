<%@include file="../../header.jsp" %>

<h3>Booking List</h3>


<div class="table-responsive">
    <table id="tableDemo" class="table table-bordered table-striped table-bordered">
        <div class="pull-right">
            <a href="${SITE_URL}/booking/addBooking" class="btn btn-success">
                <span class="glyphicon glyphicon-plus"/>
            </a> 
        </div>
        <thead>
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
                <th>College</th>
                <th>Booking Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <c:forEach var="m" items="${bookings}">
            <tbody>
                <tr>
                    <td>${m.firstName} ${m.lastName}</td>
                    <td>${m.phone}</td>
                    <td>${m.email}</td>
                    <td>${m.address}</td>
                    <td>${m.college}</td>
                    <td>${m.bookingDate}</td>
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
                        <a href="${pageContext.request.contextPath}/booking/editBooking?id=${m.id}" class="btn btn-info">
                            <span class="glyphicon glyphicon-pencil"/> edit
                        </a>
                        <a href="${pageContext.request.contextPath}/booking/delete?id=${m.id}" class="btn btn-danger" onclick="return confirm('DELETE! Are You sure?')">
                            <span class="glyphicon glyphicon-trash"/> delete
                        </a>
                    </td>
                </tr>
            </tbody>
        </c:forEach>
    </table>
</div>

<%@include file="../../footer.jsp" %>