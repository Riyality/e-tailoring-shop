<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../modules/header.jsp" />


	<div class="container-fluid">

                        <!-- Page Header -->
                        <div class="d-md-flex d-block align-items-center justify-content-between my-4 page-header-breadcrumb">
                            <h1 class="page-title fw-medium fs-24 mb-0">Employee List</h1>
                        </div>
                        <!-- Page Header Close -->


                        <!-- Start::row-4 -->
						    <div class="row">
						        <c:forEach var="emp" items="${list}">
						        
						            <div class="col-xl-4 col-md-6">
						                <div class="card custom-card text-center">
						                    <div class="card-header border-bottom-0 pb-0">
						                        <span class="ms-auto shadow-lg fs-17"><i class="ri-heart-fill text-danger"></i></span>
						                    </div>
						                    <div class="card-body pt-1">
						                        <span class="avatar avatar-xl avatar-rounded me-2 mb-2">
						                         <img src="https://laravelui.spruko.com/synto/build/assets/img/users/11.jpg" alt="img">
						                         
						                        </span>
						                        
						                        <div class="fw-semibold fs-16">${emp.name}</div>
						                        <div class="text-muted">
						                            <p>
						                            <Span>Contact: ${emp.contact}</Span>&nbsp&nbsp&nbsp&nbsp&nbsp
						                            <Span>Holiday: ${emp.holiday}</Span></p>
						                           <p> <Span>Join Date: ${emp.joinDate}</Span>&nbsp&nbsp&nbsp&nbsp
						                            <Span>Age: ${emp.age}</Span></p>
						                            <p><span>Gender: ${emp.gender}</span>&nbsp&nbsp&nbsp&nbsp&nbsp
						                            <span>Status: ${emp.status}</span></p>
						                        </div>
						                        <div class="btn-list">
						                            <a href="${pageContext.request.contextPath}/employees/update-form?id=${emp.id}" title="Update" class="btn btn-primary">
						                                <i class="fas fa-pencil-alt"></i>
						                            </a>
						                            <a href="javascript:void(0);" onclick="confirmDelete(${emp.id})" title="Delete" class="btn btn-danger">
						                                <i class="fas fa-trash"></i>
						                            </a>
						                        </div>
						                    </div>
						                </div>
						            </div>
						            
						        </c:forEach>
						    </div>
						
						<script>
						    function confirmDelete(id)
						 {
						        if (confirm('Are you sure you want to delete this record?')) {
						            window.location.href = '${pageContext.request.contextPath}/employees/delete_employee?id=' + id;
						        }
						    }
						</script>
                            
                            
                            
                        </div>
                        <!-- End::row-4 -->

                       

<jsp:include page="../modules/footer.jsp" />
