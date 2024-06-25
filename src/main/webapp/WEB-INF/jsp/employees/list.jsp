<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../modules/header.jsp" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<div class="container mt-3">

   <h4>All Employee</h4> 



    <table class="table" style="margin-left:151px" >
        <thead>
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Holiday</th>
                <th>Join Date</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp" items="${list}">
                <tr>
                   
                    <td>${emp.name}</td>
                    <td>${emp.contact}</td>
                    <td>${emp.holiday}</td>
                    <td>${emp.joinDate}</td>
                    <td>${emp.age}</td>
                    <td>${emp.gender}</td>
                    <td>${emp.status } </td>
                    
                    
                    <td>
                        <a href="${pageContext.request.contextPath}/employees/update-form?id=${emp.id}" title="Update">
                            <i class="fas fa-pencil-alt"></i>
                        </a> &nbsp; &nbsp;
                        <a href="javascript:void(0);" onclick="confirmDelete(${emp.id})" title="Delete">
                            <i class="fas fa-trash"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script>
    function confirmDelete(id) {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href = '${pageContext.request.contextPath}/employees/delete_employee?id=' + id;
        }
    }
</script>

<jsp:include page="../modules/footer.jsp" />
