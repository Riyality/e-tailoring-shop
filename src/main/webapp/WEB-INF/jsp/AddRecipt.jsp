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
			<input type="radio" id="Pant" name="" value="Pant"> Pant
		</label>
		<label for="Shirt">
			<input type="radio" id="Shirt" name="" value="Shirt"> Shirt
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
							<form action="/recipts/addSDetails" method="post">
								<div class="row">

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Pant Type</label> 
											<input type="text" class="form-control" id="pantType" name="pantType" placeholder="Pant Type">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Press</label>
											<div class="input-group">
												<input type="text" class="form-control" id="pantPress" name="pantPress" placeholder="Press">
											</div>
										</div>
									</div>

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="form-text" class="form-label">Rate </label> 
											<input type="text" class="form-control" id="pantRate" name="pantRate" placeholder="Rate">
										</div>
									</div>

									


									<div class="col-xl-4">
										<div class="mb-2">
											<label for="form-text" class="form-label">Quantity </label> 
											<input type="text" class="form-control" id="pantQuantity" name="pantQuantity" placeholder="Quantity ">
										</div>
									</div>
									
									<div class="col-xl-4">
										<div class="mb-2">
											<label for="form-text" class="form-label">Shape </label> 
											<input type="text" class="form-control" id="pantShape" name="pantShape" placeholder="pantShape">
										</div>
									</div>
									
									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Tip </label> 
											<input type="text" class="form-control" id="pantTip" name="pantTip" placeholder="Tip">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label"> pocket</label> 
											<input type="text" class="form-control" id="pantPocket" name="pantPocket" placeholder="pocket">
										</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="mb-3">
												<label for="height" class="form-label">Height</label> 
												<input type="text" class="form-control" id="pantHeight" name="pantHeight" placeholder="Height">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="waist" class="form-label">Waist</label> 
												<input type="text" class="form-control" id="pantWaist" name="pantWaist" placeholder="Waist">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="seat" class="form-label">Seat</label> 
												<input type="text" class="form-control" id="pantSeat" name="pantSeat" placeholder="Seat">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="thigh" class="form-label">Thigh</label> 
												<input type="text" class="form-control" id="pantThigh" name="pantThigh" placeholder="Thigh">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="knee" class="form-label">Knee</label> 
												<input type="text" class="form-control" id="pantKnee" name="pantKnee" placeholder="Knee">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="bottom" class="form-label">Bottom</label> 
												<input type="text" class="form-control" id="pantLegsBottom" name="pantLegsBottom" placeholder="Bottom">
											</div>
										</div>
									</div>

									<div>
										<div class="mb-3">
											<label for="form-text" class="form-label"> Other</label> 
											<input type="text" class="form-control" id="pantOther" name="pantOther" placeholder="Other">
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
						<form action="/recipts/addSDetails" method="post">
								<div class="row">

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">Shirt Type</label> 
											<input type="text" class="form-control" id="shirtType" name="shirtType" placeholder="Shirt Type">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="form-text" class="form-label">shirtPress</label>
											<div class="input-group">
												<input type="text" class="form-control" id="shirtPress" name="shirtPress" placeholder="shirtPress">
											</div>
										</div>
									</div>

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="form-text" class="form-label">Rate </label> 
											<input type="text" class="form-control" id="shirtRate" name="shirtRate" placeholder="Rate">
										</div>
									</div>

									

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="form-text" class="form-label">Quantity </label> 
											<input type="text" class="form-control" id="shirtQuantity" name="shirtQuantity" placeholder="Quantity ">
										</div>
									</div>

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="form-text" class="form-label"> Shape</label> 
											<input type="text" class="form-control" id="shirtShape" name="shirtShape" placeholder="Shape">
										</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="mb-3">
												<label for="height" class="form-label">Height</label> 
												<input type="text" class="form-control" id="shirtHeight" name="shirtHeight" placeholder="Height">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="waist" class="form-label">Chest/Stomach</label> 
												<input type="text" class="form-control" id="shirtChest" name="shirtChest" placeholder="Chest">
												<input type="text" class="form-control" id="shirtStomach" name="shirtStomach" placeholder="Stomach">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="seat" class="form-label">Shoulder</label> 
												<input type="text" class="form-control" id="shirtShoulder" name="shirtShoulder" placeholder="Shoulder">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="thigh" class="form-label">loose/sleeve/cup</label>
												<input type="text" class="form-control" id="shirtHandLoose" name="shirtHandLoose" placeholder="shirtHandLoose">
												<input type="text" class="form-control" id="shirtSleevep" name="shirtSleevep" placeholder="shirtSleeve">
												<input type="text" class="form-control" id="shirtSleeveCup" name="shirtSleeveCup" placeholder="shirtSleeveCup">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="knee" class="form-label">shirtCollar</label> 
												<input type="text" class="form-control" id="shirtCollar" name="shirtCollar" placeholder="shirtCollar">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="bottom" class="form-label">shirtLoose</label> 
												<input type="text" class="form-control" id="shirtLoose" name="shirtLoose" placeholder="shirtLoose">
												
											</div>
										</div>
									</div>

									<div>
										<div class="mb-3">
											<label for="form-text" class="form-label"> shirtOther</label> 
											<input type="text" class="form-control" id="shirtOther" name="shirtOther" placeholder="shirtOther">
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
