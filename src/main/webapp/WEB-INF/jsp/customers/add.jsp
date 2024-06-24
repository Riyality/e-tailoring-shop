<jsp:include page="../modules/header.jsp" />


<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">


		<!-- Start:: row-1 -->

		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Customer</div>
					</div>
					<div class="card-body">
						<form action="/customers/addCustomer" method="post">
							<div class="row">

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="form-text" class="form-label">Customer
											Name</label> <input type="text" class="form-control" id="form-text"
											name="name" placeholder="Customer Name">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="form-text" class="form-label">Customer
											Contact</label>
										<div class="input-group">
											<div class="input-group-text">+91</div>
											<input type="text" class="form-control" id="form-tex"
												name="contact" placeholder="Customer Contact">
										</div>
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="form-text" class="form-label">Customer
											Address</label> <input type="text" class="form-control" id=""
											name="address" placeholder="Customer Payment">
									</div>
								</div>

								<div class="col-xl-6">
									<div class="mb-3">
										<label for="form-text" class="form-label">Customer
											Payment</label> <input type="text" class="form-control" id=""
											name="payment" placeholder="Customer Payment">
									</div>
								</div>


								<div class="col-xl-6">
									<div class="mb-3">
										<label for="form-text" class="form-label">Customer
											Payment_pending</label> <input type="text" class="form-control" id=""
											name="Payment_pending" placeholder="Customer Payment_pending">
									</div>
								</div>



								<div class="col-xl-6">
									<div class="mb-3">
										<label for="form-text" class="form-label">
											payment_paid</label> <input type="text" class="form-control" id=""
											name="payment_paid" placeholder=" Customer payment_paid">
									</div>
								</div>




								<div class="col-xl-12">
									<button class="btn btn-primary" type="submit">Submit</button>
								</div>

							</div>
						</form>
					</div>
					<div class="card-footer d-none border-top-0"></div>
				</div>
			</div>

		</div>

	</div>
</div>

<!-- End::app-content -->




<jsp:include page="../modules/footer.jsp" />