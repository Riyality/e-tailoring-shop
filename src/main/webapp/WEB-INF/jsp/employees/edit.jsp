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
												name="name" value="${demo.name}" >
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
													placeholder="employee Contact">
											</div>
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">
												holiday</label> <input type="text" class="form-control"
												id="form-text" name="holiday" value="${demo.holiday}"
												>
										</div>
									</div>
									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Join Date</label> <input
												type="date" class="form-control" name="joinDate"  value="${demo.joinDate}">
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
												<option value="active"
													${demo.status == 'active' ? 'selected' : ''}>Active</option>
												<option value="inactive"
													${demo.status == 'inactive' ? 'selected' : ''}>Inactive</option>
											</select>
										</div>
									</div>

									
								<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Gender</label> <select
												class="form-select" name="gender">
												<option value="Male"  name="gender" >Male</option>
												<option  value="Female"  name="gender" >Female</option>
												<option  value="Other"  name="gender" >Other</option>
											</select>
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