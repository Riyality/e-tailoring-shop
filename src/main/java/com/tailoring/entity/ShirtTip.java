package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shirt_tip_type")
public class ShirtTip {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int id;

	
	@Column(name = "shirttiptype")
private String shirttiptype;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShirttiptype() {
		return shirttiptype;
	}

	public void setShirttiptype(String shirttiptype) {
		this.shirttiptype = shirttiptype;
	}

	public ShirtTip(int id, String shirttiptype) {
		super();
		this.id = id;
		this.shirttiptype = shirttiptype;
	}

	public ShirtTip() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
