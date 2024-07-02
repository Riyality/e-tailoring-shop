<jsp:include page="../modules/header.jsp" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<div class="main-content app-content">
    <div class="container-fluid my-5">
        <div class="row">
            <div class="col-xl-12">
                <div class="card custom-card">
                    <div class="card-header justify-content-between">
                        <div class="card-title">Update Customer</div>
                    </div>
                    <div class="card-body">
                        <form action="/customers/updatecustomer" method="post">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <input type="hidden" class="form-control" id="form-id" name="id" value="${customer.id}" placeholder="Customer Id">
                                        <label for="form-name" class="form-label">Customer Name</label>
                                        <input type="text" class="form-control" id="form-name" name="name" value="${customer.name}" placeholder="Customer Name">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-contact" class="form-label">Customer Contact</label>
                                        <div class="input-group">
                                            <div class="input-group-text">+91</div>
                                            <input type="text" class="form-control" id="form-contact" name="contact" value="${customer.contact}" placeholder="Customer Contact">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-address" class="form-label">Customer Address</label>
                                        <input type="text" class="form-control" id="form-address" name="address" value="${customer.address}" placeholder="Customer Address">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-payment" class="form-label">Customer Payment</label>
                                        <input type="text" class="form-control" id="form-payment" name="payment" value="${customer.payment}" placeholder="Customer Payment">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-payment-paid" class="form-label">Customer Payment Paid</label>
                                        <input type="text" class="form-control" id="form-payment-paid" name="payment_paid" value="${customer.payment_paid}" placeholder="Customer Payment Paid">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-payment-pending" class="form-label">Customer Payment Pending</label>
                                        <input type="text" class="form-control" id="form-payment-pending" name="payment_pending" value="${customer.payment_pending}" placeholder="Customer Payment Pending">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-3">
                                        <label for="form-email" class="form-label">Customer Email</label>
                                        <input type="text" class="form-control" id="form-email" name="email" value="${customer.email}" placeholder="Customer email">
                                    </div>
                                </div>
                                
                                <div class="col-xl-6">
                                    <div class="mb-6">
                                        <label for="form-status" class="form-label">Status</label>
                                        <select class="form-select" id="form-status" name="status">
                                            <option value="active" ${customer.status == 'active' ? 'selected' : ''}>Active</option>
                                            <option value="inactive" ${customer.status == 'inactive' ? 'selected' : ''}>Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <button class="btn btn-primary" type="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../modules/footer.jsp" />
