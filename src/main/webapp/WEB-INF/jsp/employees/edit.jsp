<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<jsp:include page="../modules/header.jsp" />


<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">


		<!-- Start:: row-1 -->

		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<!-- <div class="card-title">Add Customer</div>
 -->
						

						<div class="card-body">
							<form action="/employees/update_employee" method="post">
								<div class="row">
									<div class="col-xl-6">
										<div class="mb-3">
										 <input
									type="hidden" class="form-control" id="form-text" name="id"
									value="${demo.id}" placeholder="Customer Id">
											<label for="form-text" class="form-label">employee
												Name</label> <input type="text" class="form-control" id="form-text"
												name="name" value="${demo.name}" placeholder="Customer Name">
										</div>
									</div>
									
									

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">employee
												Contact</label>
											<div class="input-group">
												<div class="input-group-text">+91</div>
												<input type="text" class="form-control" id="form-tex"
													name="contact" value="${demo.contact}"
													placeholder="Customer Contact">
											</div>
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">employee
												Address</label> <input type="text" class="form-control"
												id="form-text" name="address" value="${demo.holiday}"
												placeholder="Customer Address">
										</div>
									</div>
									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Join Date</label> <input
												type="date" class="form-control" name="joinDate">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Age</label> <input
												type="text" class="form-control" name="age"
												value="${demo.age}">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-6">
											<label for="form-status" class="form-label">Status</label> <select
												class="form-select" name="status">
												<option value="active">Active</option>
												<option value="inactive">Inactive</option>
											</select>
										</div>
									</div>

								</div>

								<div class="row">
									<label class="form-label mb-1">Gender</label>

									<div class="col-xl-3">
										<div class="form-check">
											<input class="form-check-input" name="gender" type="radio"
												value="Male" id="genderMale"> <label
												class="form-check-label" for="genderMale"> Male </label>
										</div>
									</div>
									<div class="col-xl-3">
										<div class="form-check">
											<input class="form-check-input" name="gender" type="radio"
												value="Female" id="genderFemale"> <label
												class="form-check-label" for="genderFemale"> Female
											</label>
										</div>
									</div>
									<div class="col-xl-3">
										<div class="form-check">
											<input class="form-check-input" name="gender" type="radio"
												value="Other" id="genderOther"> <label
												class="form-check-label" for="genderOther"> Other </label>
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