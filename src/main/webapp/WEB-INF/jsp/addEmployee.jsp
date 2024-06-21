<jsp:include page="modules/header.jsp" />


<!-- Start::app-content -->
<div class="main-content app-content">
	<div class="container-fluid my-5">


		<!-- Start:: row-1 -->
		
		
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title">Add Employee</div>
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
							<input type="date" class="form-control"  name="joindate" >
						</div>
					  </div>
					  
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Age</label> 
							<input type="text" class="form-control"   name="age" >
						</div>
					  </div>
					

					 <div class="col-xl-6 mb-3">
    <div class="row">
        <label class="form-label mb-1">Gender</label>
        
        <div class="col-xl-4">
            <div class="form-check">
                <input class="form-check-input" name="gender" type="radio" value="Male" id="genderMale">
                <label class="form-check-label" for="genderMale">
                    Male
                </label>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="form-check">
                <input class="form-check-input" name="gender" type="radio" value="Female" id="genderFemale">
                <label class="form-check-label" for="genderFemale">
                    Female
                </label>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="form-check">
                <input class="form-check-input" name="gender" type="radio" value="Other" id="genderOther">
                <label class="form-check-label" for="genderOther">
                    Other
                </label>
            </div>
        </div>
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



<jsp:include page="modules/footer.jsp" />