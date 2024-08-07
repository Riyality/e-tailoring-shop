package com.tailoring.entity;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table( name = "receipt" )
public class Receipt {

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	@Column( name = "id" )
	private Long id;

	@Column( name = "curr_date" )
	private LocalDate currentDate;

	@Column( name = "delivery_date" )
	private LocalDate deliveryDate;

	@ManyToOne
	@JoinColumn( name = "customer", referencedColumnName = "id" )
	private Customer customer;

	@Column( name = "status" )
	private String status;

	private Float amount;

	@Column( name = "paid_amount" )
	private Float paidAmount;
	
	@Column( name = "pending_amount" )
	private Float pendingAmount;


	@OneToOne( cascade = CascadeType.ALL, optional = true )
	@JoinColumn( name = "shirt", referencedColumnName = "id" )
	private ShirtDetailsEntity shirtDetailsEntity;

	@OneToOne( cascade = CascadeType.ALL, optional = true )
	@JoinColumn( name = "pant", referencedColumnName = "id" )
	private PantDetailsEntity pantDetailsEntity;
	
}
