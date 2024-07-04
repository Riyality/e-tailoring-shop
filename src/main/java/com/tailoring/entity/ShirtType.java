package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shirt_type")
public class ShirtType {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "stype")
	private String shirtType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShirtType() {
		return shirtType;
	}

	public void setShirtType(String shirtType) {
		this.shirtType = shirtType;
	}

	public ShirtType(int id, String shirtType) {
		super();
		this.id = id;
		this.shirtType = shirtType;
	}

	public ShirtType() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
}