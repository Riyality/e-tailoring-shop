package com.tailoring.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table( name = "customer" )
public class Customer {
	@GeneratedValue( strategy = GenerationType.AUTO )
	@Id
	@Column( name = "id" )
	private int id;

	@Column( name = "name" )
	private String name;

	@Column( name = "contact" )
	private String contact;

	@Column( name = "address" )
	private String address;

	@Column( name = "payment" )
	private int payment;

	@Column( name = " payment_paid" )
	private int payment_paid;

	@Column( name = " payment_pending" )
	private int payment_pending;

	@Column( name = "status" )
	private String status;
	
	@Column(name="email")
	private String email;
	  

	@OneToMany( mappedBy = "customer", cascade = CascadeType.ALL )
	private List<Receipt> receipts;

}
