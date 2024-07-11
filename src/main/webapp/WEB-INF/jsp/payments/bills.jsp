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
					<th>Payment</th>
					<th>Payment Pending</th>
					<th>Shirts</th>
					<th>Pants</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="receipt" items="${list}">
					<tr>
						<td>
							<div class="d-flex align-items-center">
								<div class="avatar-circle">${fn:toUpperCase(fn:substring(receipt.customer.name, 0, 1))}</div>
								<div style="margin-left: 10px;">
									<div>
										<span>${receipt.customer.name}</span>
									</div>
									<div>
										<span class="text-muted">${receipt.customer.contact}</span>
									</div>
								</div>
							</div>
						</td>
						<td>${receipt.amount}</td>
						<td>${receipt.pendingAmount}</td>
						<td>${receipt.shirtDetailsEntity.shirtQuantity}
							<button type="button" class="btn btn-primary btn-sm">Assign</button>
						</td>
						<td>${receipt.pantDetailsEntity.pantQuantity}
							<button type="button" class="btn btn-primary btn-sm">Assign</button>
						</td>
						<td><span class="badge bg-success text-light">${receipt.status}</span></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>


<jsp:include page="../modules/footer.jsp" />

