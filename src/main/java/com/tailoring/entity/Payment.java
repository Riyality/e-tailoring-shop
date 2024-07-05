package com.tailoring.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="payment")
public class Payment {
	
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "recipt-no")
	private int reciptno;
    
    @Column(name = "amount")
	private int amount;
    
    @Column(name = "finalamount")
	private int finalamount;
    
    @Column(name = "paidamount")
    private int paidamount;
    
    @Column(name = "remainingamount")
    private int remainingamount;
    
    @Column(name = "due_Date")
	private Date due_Date;
    
    @Column(name = "name")
	private String name;

	public Payment() {
		super();
	}

	public Payment(int reciptno, int amount, int finalamount, int paidamount, int remainingamount, Date due_Date,
			String name) {
		super();
		this.reciptno = reciptno;
		this.amount = amount;
		this.finalamount = finalamount;
		this.paidamount = paidamount;
		this.remainingamount = remainingamount;
		this.due_Date = due_Date;
		this.name = name;
	}

	public int getReciptno() {
		return reciptno;
	}

	public void setReciptno(int reciptno) {
		this.reciptno = reciptno;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getFinalamount() {
		return finalamount;
	}

	public void setFinalamount(int finalamount) {
		this.finalamount = finalamount;
	}

	public int getPaidamount() {
		return paidamount;
	}

	public void setPaidamount(int paidamount) {
		this.paidamount = paidamount;
	}

	public int getRemainingamount() {
		return remainingamount;
	}

	public void setRemainingamount(int remainingamount) {
		this.remainingamount = remainingamount;
	}

	public Date getDue_Date() {
		return due_Date;
	}

	public void setDue_Date(Date due_Date) {
		this.due_Date = due_Date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

    
}
