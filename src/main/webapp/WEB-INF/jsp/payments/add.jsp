<jsp:include page="../modules/header.jsp" />
<!-- Start::app-content -->
<div class="main-content app-content">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="container-fluid my-5">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet"> 
    <style>
        /* Custom style for select with Font Awesome icon */
        .custom-select-wrapper {
            position: relative;
            display: inline-block;
            width: 100%;
        }
        .custom-select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 100%;
            padding-right: 40px; /* Adjust for icon spacing */
        }
        .custom-select-icon {
            position: absolute;
            top: 50%;
            right: 10px;
            pointer-events: none;
            transform: translateY(-50%);
            color: #495057; /* Adjust icon color */
        }
    </style>

		<!-- Start:: row-1 -->
		
		
		<div class="row">
			<div class="col-xl-12">
				<div class="card custom-card">
					<div class="card-header justify-content-between">
						<div class="card-title"><h4>Payment </h4></div>
					</div>
					<div class="card-body">
					<form action="/payments/add" method="post">
					<div class="row">
					
				
					  <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Receipt No:</label> 
							<input type="text" class="form-control" id="recipt-no"
							name="recipt-no">
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
							<label for="form-text" class="form-label">Final amount:</label> 
							<input type="text" class="form-control"   name="finalamount" >
						</div>
					  </div>
					
					   <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Paid amount :</label> 
							<input type="text" class="form-control"  name="paidamount" >
						</div>
					  </div>
					  
					 <div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Remaining amount:</label> 
							<input type="text" class="form-control"   name="remainingamount" >
						</div>
					  </div>
					  
					<div class="col-xl-6">
						<div class="mb-3">
							<label for="form-text" class="form-label">Due Date:</label> 
							<input type="date" class="form-control"  name="due_Date" >
						</div>
					  </div>
					 <div class="col-xl-6">
                <div class="mb-3">
                    <label for="employeeName">Employee Name:</label>
                    <div class="custom-select-wrapper">
                        <select name="name" class="box form-control custom-select" id="employeeName">
                            <c:forEach items="${list}" var="employee">
                                <option value="${employee.id}">${employee.name}</option>
                            </c:forEach>
                        </select>
                        <i class="fas fa-chevron-down custom-select-icon"></i>
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




