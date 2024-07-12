<jsp:include page="../modules/header.jsp" />


<!-- Start::app-content -->
	<div class="container-fluid my-5">


		<!-- Start:: row-1 -->
		
		
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Customer</div>
					</div>
					<div class="card-body">
					<form action="/employees/add" method="post">
					<div class="row">
				
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Name</label> 
							<input type="text" class="form-control"  name="name" >
						</div>
					  </div>
				
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Contact</label> 
							<input type="text" class="form-control"   name="contact" >
						</div>
					  </div>
					
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Holiday</label> 
							<input type="text" class="form-control"  name="holiday" >
						</div>
					  </div>
					
					
					<div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Join Date</label> 
							<input type="date" class="form-control"  name="joinDate" >
						</div>
					  </div>
					  
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Age</label> 
							<input type="text" class="form-control"   name="age" >
						</div>
					  </div>

								
								<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Gender</label> <select
												class="form-select" name="gender">
												<option value="Male"  name="gender" >Male</option>
												<option  value="Female" name="gender" >Female</option>
												<option  value="Other"  name="gender" >Other</option>
											</select>
										</div>
									</div>

                 </div>


									<div class="col-xl-12">
										<button class="btn btn-primary" type="submit">Submit</button>
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