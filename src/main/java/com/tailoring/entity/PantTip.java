package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pant_tip_type")
public class PantTip {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
	
	@Column(name = "tiptype")
private String tiptype;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTiptype() {
		return tiptype;
	}

	public void setTiptype(String tiptype) {
		this.tiptype = tiptype;
	}

	public PantTip(int id, String tiptype) {
		super();
		this.id = id;
		this.tiptype = tiptype;
	}

	public PantTip() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
