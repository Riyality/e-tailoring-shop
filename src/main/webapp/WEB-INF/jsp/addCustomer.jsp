<jsp:include page="modules/header.jsp" />


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
					<form action="/customers/addCustomer"method="post">
					<div class="row">
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Customer Name</label> 
							<input type="text" class="form-control" id="form-text" name="name" placeholder="Customer Name">
						</div>
					  </div>
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Customer Contact</label> 
							<input type="text" class="form-control" id="" name="contact" placeholder="Customer Address">
						</div>
					  </div>
					
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Customer Address</label>
							<div class="input-group">
					            <div class="input-group-text">+91</div>
					            <input type="text" class="form-control" id="form-tex" name="address" placeholder="Customer Contact">
					        </div>
						</div>
					  </div>
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Customer Payment</label> 
							<input type="text" class="form-control" id="" name="payment" placeholder="Customer Payment">
						</div>
					  </div>
					  
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Customer Payment_pending</label> 
							<input type="text" class="form-control" id="" name="payment_paid" placeholder="Customer Payment_pending">
						</div>
					  </div>
					  
					  
					  
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label"> payment_paid</label> 
							<input type="text" class="form-control" id="" name="payment_pending" placeholder=" Customer payment_paid">
						</div>
					  </div>
					  
					  
					 
					  
					  
					  
					  
					  
					  
					  
					  
					  
					
					  <!-- <div class="col-xl-6">
						
				        <div class="mb-3">
				            <label class="form-label">Select Option</label>
				            <select class="form-select" id="autoSizingSelect">
				                <option selected>Select Option</option>
				                <option value="1">One</option>
				                <option value="2">Two</option>
				                <option value="3">Three</option>
				            </select>
				        </div>
					  </div>
					  
					  <div class="col-xl-6 mb-3">
						
				          <div class="row">
	                        <label class="form-label mb-1">Gender</label>
	                        
	                        <div class="col-xl-4">
	                            <div class="form-check">
	                                <input class="form-check-input" name="gender" type="radio" value="">
	                                <label class="form-check-label" for="">
	                                    Male
	                                </label>
	                            </div>
	                        </div>
	                        <div class="col-xl-4">
	                            <div class="form-check">
	                                <input class="form-check-input" name="gender" type="radio" value="">
	                                <label class="form-check-label" for="">
	                                    Female
	                                </label>
	                            </div>
	                        </div>
	                        <div class="col-xl-4">
	                            <div class="form-check">
	                                <input class="form-check-input" name="gender" type="radio" value="">
	                                <label class="form-check-label" for="">
	                                    Female
	                                </label>
	                            </div>
	                        </div>
	                    </div>
	                    
	                </div>
	                
	                
					
					  <div class="col-xl-12">
						
				        <div class="mb-3">
				            <label class="form-label">Remark</label>
				            <textarea class="form-control" rows="4" cols=""></textarea>
				        </div>
				        
					  </div>
				        
					  </div>
					   -->
					  
					  
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



<jsp:include page="modules/footer.jsp" />