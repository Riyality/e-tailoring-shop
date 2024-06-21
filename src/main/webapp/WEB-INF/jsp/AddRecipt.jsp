<jsp:include page="modules/header.jsp" />

<style>
.form-row {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 10px; /* Adjust as needed */
}

.form-group {
	display: flex;
	align-items: center;
	margin-right: 20px;
}

.form-label {
	margin-right: 10px;
}

.form-control {
	
}
.hidden {
    display: none;
}

.container{
background-color: white;


}

.radio{
margin-left: 600px;
font-size: 1.8em;
}
</style>


<div class="main-content app-content">
	<div class="container-fluid my-5">

	<div class="row">
    <div class="col-xl-12">
        <div class="card custom-card">
            <div class="card-header justify-content-between">
                <div class="card-title"></div>
            </div>
            <div class="card-body">
                <form>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="mb-3">
                                <label for="recipt-no" class="form-label">Receipt No:</label>
                                <input type="text" class="form-control" id="recipt-no" name="recipt-no" placeholder="Receipt number">
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="mb-3">
                                <label for="date" class="form-label">Date:</label>
                                <input type="date" class="form-control" id="date" name="date" placeholder="Date">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-6">
                            <div class="mb-3">
                                <label for="supply-day" class="form-label">Supply Day:</label>
                                <input type="text" class="form-control" id="supply-day" name="supply-day" placeholder="Supply Day">
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="mb-3">
                                <label for="supply-date" class="form-label">Supply Date:</label>
                                <input type="date" class="form-control" id="supply-date" name="supply-date" placeholder="Supply Date">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name:</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-xl-4">
                            <div class="mb-3">
                                <label for="address" class="form-label">Address:</label>
                                <input type="text" class="form-control" id="address" name="address" placeholder="Address">
                            </div>
                        </div>
                        <div class="col-xl-4">
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone No:</label>
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone No">
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

		
		<br><br>
		<div class="radio">
		<label>Select Your Type:</label><br>
		<label for="pant">
			<input type="radio" id="Pant" name="clothingType" value="Pant"> Pant
		</label>
		<label for="Shirt">
			<input type="radio" id="Shirt" name="clothingType" value="Shirt"> Shirt
		</label><br><br><br>
		</div>

		<!-- Start:: row-1 -->

		<div id="pant-form" class="hidden">
			<div class="row">
				<div class="col-xl-12">
					<div class="card custom-card">
						<div class="card-header justify-content-between">
							<div class="card-title">Add Pant</div>
						</div>
						<div class="card-body">
							<form action="/customers/addCustomer" method="post">
								<div class="row">

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Pant Type</label> 
											<input type="text" class="form-control" id="form-text" name="Pant Type" placeholder="Pant Type">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Press</label>
											<div class="input-group">
												<input type="text" class="form-control" id="form-tex" name="press" placeholder="Press">
											</div>
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Rate </label> 
											<input type="text" class="form-control" id="" name="rate" placeholder="Rate">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Tip </label> 
											<input type="text" class="form-control" id="" name="tip" placeholder="Tip">
										</div>
									</div>


									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Quantity </label> 
											<input type="text" class="form-control" id="" name="Quantity" placeholder="Quantity ">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label"> pocket</label> 
											<input type="text" class="form-control" id="" name="pocket" placeholder="pocket">
										</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="mb-3">
												<label for="height" class="form-label">Height</label> 
												<input type="text" class="form-control" id="height" name="Height" placeholder="Height">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="waist" class="form-label">Waist</label> 
												<input type="text" class="form-control" id="waist" name="Waist" placeholder="Waist">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="seat" class="form-label">Seat</label> 
												<input type="text" class="form-control" id="seat" name="Seat" placeholder="Seat">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="thigh" class="form-label">Thigh</label> 
												<input type="text" class="form-control" id="thigh" name="Thigh" placeholder="Thigh">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="knee" class="form-label">Knee</label> 
												<input type="text" class="form-control" id="knee" name="Knee" placeholder="Knee">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="bottom" class="form-label">Bottom</label> 
												<input type="text" class="form-control" id="bottom" name="Bottom" placeholder="Bottom">
											</div>
										</div>
									</div>

									<div>
										<div class="mb-3">
											<label for="form-text" class="form-label"> Other</label> 
											<input type="text" class="form-control" id="" name="Other" placeholder="Other">
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

		<div id="shirt-form" class="hidden">
			<div class="row">
				<div class="col-xl-12">
					<div class="card custom-card">
						<div class="card-header justify-content-between">
							<div class="card-title">Add Shirt</div>
						</div>
						<div class="card-body">
							<form action="/customers/addCustomer" method="post">
								<div class="row">

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Shirt Type</label> 
											<input type="text" class="form-control" id="form-text" name="Shirt Type" placeholder="Shirt Type">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Press</label>
											<div class="input-group">
												<input type="text" class="form-control" id="form-tex" name="press" placeholder="Press">
											</div>
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Rate </label> 
											<input type="text" class="form-control" id="" name="rate" placeholder="Rate">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Tip </label> 
											<input type="text" class="form-control" id="" name="tip" placeholder="Tip">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Quantity </label> 
											<input type="text" class="form-control" id="Quantity" name="Quantity" placeholder="Quantity ">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label"> pocket</label> 
											<input type="text" class="form-control" id="pocket" name="pocket" placeholder="pocket">
										</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="mb-3">
												<label for="height" class="form-label">Height</label> 
												<input type="text" class="form-control" id="height" name="Height" placeholder="Height">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="waist" class="form-label">Chest/Stomach</label> 
												<input type="text" class="form-control" id="Chest/Stomach" name="Chest/Stomach" placeholder="Chest/Stomach">
												<input type="text" class="form-control" id="Chest/Stomach" name="Chest/Stomach" placeholder="Chest/Stomach">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="seat" class="form-label">Shoulder</label> 
												<input type="text" class="form-control" id="Shoulder" name="Shoulder" placeholder="Shoulder">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="thigh" class="form-label">loose/sleeve/cup</label>
												<input type="text" class="form-control" id="loose/sleeve/cup" name="loose/sleeve/cup" placeholder="loose/sleeve/cup">
												<input type="text" class="form-control" id="loose/sleeve/cup" name="loose/sleeve/cup" placeholder="loose/sleeve/cup">
												<input type="text" class="form-control" id="loose/sleeve/cup" name="loose/sleeve/cup" placeholder="loose/sleeve/cup">
												<input type="text" class="form-control" id="loose/sleeve/cup" name="loose/sleeve/cup" placeholder="loose/sleeve/cup">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="knee" class="form-label">Colors</label> 
												<input type="text" class="form-control" id="Colors" name="Colors" placeholder="Colors">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="bottom" class="form-label">Loose</label> 
												<input type="text" class="form-control" id="bottom" name="Loose" placeholder="Loose">
												<input type="text" class="form-control" id="bottom" name="Loose" placeholder="Loose">
												<input type="text" class="form-control" id="bottom" name="Loose" placeholder="Loose">
											</div>
										</div>
									</div>

									<div>
										<div class="mb-3">
											<label for="form-text" class="form-label"> Other</label> 
											<input type="text" class="form-control" id="" name="Other" placeholder="Other">
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
</div>



<script>
document.addEventListener('DOMContentLoaded', function() {
    const pantRadio = document.getElementById('Pant');
    const shirtRadio = document.getElementById('Shirt');
    const pantForm = document.getElementById('pant-form');
    const shirtForm = document.getElementById('shirt-form');

    pantRadio.addEventListener('change', function() {
        if (pantRadio.checked) {
            pantForm.classList.remove('hidden');
            shirtForm.classList.add('hidden');
        }
    });

    shirtRadio.addEventListener('change', function() {
        if (shirtRadio.checked) {
            shirtForm.classList.remove('hidden');
            pantForm.classList.add('hidden');
        }
    });
});
</script>

<jsp:include page="modules/footer.jsp" />
