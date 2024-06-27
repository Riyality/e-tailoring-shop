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

.container {
	background-color: white;
}

.radio {
	margin-left: 600px;
	font-size: 1.8em;
}
</style>


<div class="main-content app-content">
	<div class="container-fluid my-5">
		<form action="/recipt" method="post">
			<div class="row">
				<div class="col-xl-12">
					<div class="card custom-card">
						<div class="card-header justify-content-between">
							<div class="card-title"></div>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-xl-6">
									<div class="mb-3">
										<label for="recipt-no" class="form-label">Receipt No:</label>
										<input type="text" class="form-control" id="recipt-no"
											name="recipt-no" placeholder="Receipt number" readonly="readonly" value="${receiptMaxId }">
									</div>
								</div>
								<div class="col-xl-6">
									<div class="mb-3">
										<label for="date" class="form-label">Date:</label> <input
											type="date" class="form-control" id="date" name="currentDate"
											placeholder="Date">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-xl-6">
									<div class="mb-3">
										<label for="supply-date" class="form-label">Supply
											Date:</label> <input type="date" class="form-control"
											id="supply-date" name="deliveryDate"
											placeholder="Supply Date">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="name" class="form-label">Name:</label> <input
											type="text" class="form-control" id="name" name="name"
											placeholder="Name" value="${customer.name }">
											<input
											type="hidden" class="form-control" id="customerId" name="customerId"
											placeholder="Phone No" value="${customer.id }">
									</div>
								</div>
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="address" class="form-label">Address:</label> <input
											type="text" class="form-control" id="address" name="address"
											placeholder="Address" value="${customer.address }">
									</div>
								</div>
								<div class="col-xl-4">
									<div class="mb-3">
										<label for="phone" class="form-label">Phone No:</label> <input
											type="text" class="form-control" id="phone" name="contact"
											placeholder="Phone No" value="${customer.contact }">
									</div>
								</div>
							</div>


						</div>
						<div class="card-footer d-none border-top-0"></div>
					</div>
				</div>
			</div>


			<br> <br>
			<div class="radio">
				<label>Select Your Type:</label><br> <label for="pant">
					<input type="radio" id="Pant" name="" value="Pant"> Pant
				</label> <label for="Shirt"> <input type="radio" id="Shirt" name=""
					value="Shirt"> Shirt
				</label><br> <br> <br>
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

								<div class="row">
									<div class="col-xl-6">
										<div class="mb-3">
											<label for="pantType" class="form-label">Pant Type</label> <input
												type="text" class="form-control" id="pantType"
												name="pantDetails.pantType" placeholder="Pant Type">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="pantPress" class="form-label">Press</label> <input
												type="text" class="form-control" id="pantPress"
												name="pantDetails.pantPress" placeholder="Press">
										</div>
									</div>

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="pantRate" class="form-label">Rate</label> <input
												type="text" class="form-control" id="pantRate"
												name="pantDetails.pantRate" placeholder="Rate">
										</div>
									</div>

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="pantQuantity" class="form-label">Quantity</label>
											<input type="text" class="form-control" id="pantQuantity"
												name="pantDetails.pantQuantity" placeholder="Quantity">
										</div>
									</div>

									<div class="col-xl-4">
										<div class="mb-2">
											<label for="pantShape" class="form-label">Shape</label> <input
												type="text" class="form-control" id="pantShape"
												name="pantDetails.pantShape" placeholder="Shape">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="pantTip" class="form-label">Tip</label> <input
												type="text" class="form-control" id="pantTip"
												name="pantDetails.pantTip" placeholder="Tip">
										</div>
									</div>

									<div class="col-xl-6">
										<div class="mb-3">
											<label for="pantPocket" class="form-label">Pocket</label> <input
												type="text" class="form-control" id="pantPocket"
												name="pantDetails.pantPocket" placeholder="Pocket">
										</div>
									</div>

									<div class="row">
										<div class="col">
											<div class="mb-3">
												<label for="pantHeight" class="form-label">Height</label> <input
													type="text" class="form-control" id="pantHeight"
													name="pantDetails.pantHeight" placeholder="Height">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="pantWaist" class="form-label">Waist</label> <input
													type="text" class="form-control" id="pantWaist"
													name="pantDetails.pantWaist" placeholder="Waist">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="pantSeat" class="form-label">Seat</label> <input
													type="text" class="form-control" id="pantSeat"
													name="pantDetails.pantSeat" placeholder="Seat">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="pantThigh" class="form-label">Thigh</label> <input
													type="text" class="form-control" id="pantThigh"
													name="pantDetails.pantThigh" placeholder="Thigh">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="pantKnee" class="form-label">Knee</label> <input
													type="text" class="form-control" id="pantKnee"
													name="pantDetails.pantKnee" placeholder="Knee">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="pantLegsBottom" class="form-label">Bottom</label>
												<input type="text" class="form-control" id="pantLegsBottom"
													name="pantDetails.pantLegsBottom" placeholder="Bottom">
											</div>
										</div>
									</div>

									<div>
										<div class="mb-3">
											<label for="pantOther" class="form-label">Other</label> <input
												type="text" class="form-control" id="pantOther"
												name="pantDetails.pantOther" placeholder="Other">
										</div>
									</div>
								</div>
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
								<div class="row">
									<div class="col-xl-6">
										<div class="mb-3">
											<label for="shirtType" class="form-label">Shirt Type</label>
											<input type="text" class="form-control" id="shirtType"
												name="shirtDetails.shirtType" placeholder="Shirt Type">
										</div>
									</div>
									<div class="col-xl-6">
										<div class="mb-3">
											<label for="shirtPress" class="form-label">Shirt
												Press</label> <input type="text" class="form-control"
												id="shirtPress" name="shirtDetails.shirtPress"
												placeholder="Shirt Press">
										</div>
									</div>
									<div class="col-xl-4">
										<div class="mb-2">
											<label for="shirtRate" class="form-label">Rate</label> <input
												type="text" class="form-control" id="shirtRate"
												name="shirtDetails.shirtRate" placeholder="Rate">
										</div>
									</div>
									<div class="col-xl-4">
										<div class="mb-2">
											<label for="shirtQuantity" class="form-label">Quantity</label>
											<input type="text" class="form-control" id="shirtQuantity"
												name="shirtDetails.shirtQuantity" placeholder="Quantity">
										</div>
									</div>
									<div class="col-xl-4">
										<div class="mb-2">
											<label for="shirtShape" class="form-label">Shape</label> <input
												type="text" class="form-control" id="shirtShape"
												name="shirtDetails.shirtShape" placeholder="Shape">
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="mb-3">
												<label for="shirtHeight" class="form-label">Height</label> <input
													type="text" class="form-control" id="shirtHeight"
													name="shirtDetails.shirtHeight" placeholder="Height">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtChest" class="form-label">Chest</label> <input
													type="text" class="form-control" id="shirtChest"
													name="shirtDetails.shirtChest" placeholder="Chest">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtStomach" class="form-label">Stomach</label>
												<input type="text" class="form-control" id="shirtStomach"
													name="shirtDetails.shirtStomach" placeholder="Stomach">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtShoulder" class="form-label">Shoulder</label>
												<input type="text" class="form-control" id="shirtShoulder"
													name="shirtDetails.shirtShoulder" placeholder="Shoulder">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtHandLoose" class="form-label">Hand
													Loose</label> <input type="text" class="form-control"
													id="shirtHandLoose" name="shirtDetails.shirtHandLoose"
													placeholder="Hand Loose">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtSleeve" class="form-label">Sleeve</label> <input
													type="text" class="form-control" id="shirtSleeve"
													name="shirtDetails.shirtSleeve" placeholder="Sleeve">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtSleeveCup" class="form-label">Sleeve
													Cup</label> <input type="text" class="form-control"
													id="shirtSleeveCup" name="shirtDetails.shirtSleeveCup"
													placeholder="Sleeve Cup">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtCollar" class="form-label">Collar</label> <input
													type="text" class="form-control" id="shirtCollar"
													name="shirtDetails.shirtCollar" placeholder="Collar">
											</div>
										</div>
										<div class="col">
											<div class="mb-3">
												<label for="shirtLoose" class="form-label">Loose</label> <input
													type="text" class="form-control" id="shirtLoose"
													name="shirtDetails.shirtLoose" placeholder="Loose">
											</div>
										</div>
									</div>
									<div>
										<div class="mb-3">
											<label for="shirtOther" class="form-label">Other
												Details</label> <input type="text" class="form-control"
												id="shirtOther" name="shirtDetails.shirtOther"
												placeholder="Other Details">
										</div>
									</div>

								</div>

							</div>
							<div class="card-footer d-none border-top-0"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-12">
				<button class="btn btn-primary" type="submit">Submit</button>
			</div>
		</form>
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
