<jsp:include page="../modules/header.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<title>Customer Table</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<style>
.avatar-circle {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-size: 20px;
	border-radius: 50%;
	background-color: #007bff;
	color: white;
}

.table td {
	vertical-align: middle;
}
</style>
</head>

<div class="container mt-3">
	<h2>All Customer</h2>
	<div class="table-responsive">
		<table class="table text-nowrap table-bordered">


			<thead>

				<tr>
					<th>Name</th>
					<th>Contact</th>
					<th>Address</th>
					<th>Payment</th>
					<th>Payment Paid</th>
					<th>Payment Pending</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${list}">
					<tr>
						<td>
							<div class="d-flex align-items-center">
								<div class="avatar-circle">${fn:toUpperCase(fn:substring(customer.name, 0, 1))}</div>
								<div style="margin-left: 10px;">
									<div>
										<span>${customer.name}</span>
									</div>
									<div>
										<span class="text-muted">${customer.email}</span>
									</div>
								</div>
							</div>
						</td>
						<td>${customer.contact}</td>
						<td>${customer.address}</td>
						<td>${customer.payment}</td>
						<td>${customer.payment_paid}</td>
						<td>${customer.payment_pending}</td>
						<td><span class="badge bg-success text-light">${customer.status}</span></td>
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
</div>

<script>
        function confirmDelete(id) {
            if (confirm('Are you sure you want to delete this record?')) {
                window.location.href = '${pageContext.request.contextPath}/customers/deletecustomer?id=' + id;
            }
        }
    </script>

<jsp:include page="../modules/footer.jsp" />

