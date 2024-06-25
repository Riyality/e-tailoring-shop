<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../modules/header.jsp" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">



<div class="container mt-3">
	<h2>Table</h2>
	<br>
	<h4>All customer</h4>
	<br>



	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Contact</th>
				<th>Address</th>
				<th>Payment</th>
				<th>Payment paid</th>
				<th>Payment pending</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="customer" items="${list}">
				<tr>
					<td>${customer.name}</td>
					<td>${customer.contact}</td>
					<td>${customer.address}</td>
					<td>${customer.payment}</td>
					<td>${customer.payment_paid}</td>
					<td>${customer.payment_pending}</td>
					<td>${customer.status}</td>




					<td><a
						href="${pageContext.request.contextPath}/customers/update_customer?id=${customer.id}"
						title="Update"> <i class="fas fa-pencil-alt"
							style="color: blue;"></i>
					</a> &nbsp; &nbsp; <a href="javascript:void(0);"
						onclick="confirmDelete(${customer.id})" title="Delete"> <i
							class="fas fa-trash" style="color: red;"></i>
					</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<script>
    function confirmDelete(id)
 {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href = '${pageContext.request.contextPath}/customers/deletecustomer?id=' + id;
        }
    }
</script>

<jsp:include page="../modules/footer.jsp" />

