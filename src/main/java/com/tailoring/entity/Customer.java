package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	
	@Column(name="address")
	private String address;
	
	@Column(name="contact")
	private String contact;
	
	@Column(name="payment")
	private int payment;
	
	@Column(name=" payment_pending")
	private int payment_pending;
	
	@Column(name=" payment_paid")
	private int payment_paid;
	
	public Customer() {
		
	}

	public Customer(int id, String name, String address, String contact, int payment, int payment_pending,
			int payment_paid) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.contact = contact;
		this.payment = payment;
		this.payment_pending = payment_pending;
		this.payment_paid = payment_paid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getPayment_pending() {
		return payment_pending;
	}

	public void setPayment_pending(int payment_pending) {
		this.payment_pending = payment_pending;
	}

	public int getPayment_paid() {
		return payment_paid;
	}

	public void setPayment_paid(int payment_paid) {
		this.payment_paid = payment_paid;
	}
	
	
	

}
