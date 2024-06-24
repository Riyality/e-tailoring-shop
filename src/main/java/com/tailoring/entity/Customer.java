package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "contact")
	private String contact;

	@Column(name = "address")
	private String address;

	@Column(name = "payment")
	private int payment;

	@Column(name = " payment_paid")
	private int payment_paid;

	@Column(name = " payment_pending")
	private int payment_pending;

	@Column(name = "status")
	private String status;

	public Customer() {

	}

	public Customer(int id, String name, String contact, String address, int payment, int payment_paid,
			int payment_pending, String status) {
		super();
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.address = address;
		this.payment = payment;
		this.payment_paid = payment_paid;
		this.payment_pending = payment_pending;
		this.status = status;
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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getPayment_paid() {
		return payment_paid;
	}

	public void setPayment_paid(int payment_paid) {
		this.payment_paid = payment_paid;
	}

	public int getPayment_pending() {
		return payment_pending;
	}

	public void setPayment_pending(int payment_pending) {
		this.payment_pending = payment_pending;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

}
