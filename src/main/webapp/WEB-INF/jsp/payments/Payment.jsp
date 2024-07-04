<jsp:include page="modules/header.jsp" />
<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">


		<!-- Start:: row-1 -->
		
		
		
		
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title"><h4>Payment </h4></div>
					</div>
					<div class="card-body">
					<form action="/" method="post">
					<div class="row">
					
				
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Bill Id:</label> 
							<input type="text" class="form-control"  name="bill-id" >
						</div>
					  </div>
				
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Amount:</label> 
							<input type="text" class="form-control"   name="amount" >
						</div>
					  </div>
					
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Paid:</label> 
							<input type="text" class="form-control"  name="paid" >
						</div>
					  </div>
					
					
					<div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Due Date:</label> 
							<input type="date" class="form-control"  name="dueDate" >
						</div>
					  </div>
					  
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Remaining:</label> 
							<input type="text" class="form-control"   name="remaining" >
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


<jsp:include page="modules/footer.jsp" />
