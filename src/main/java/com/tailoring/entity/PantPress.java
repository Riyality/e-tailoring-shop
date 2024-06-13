package com.tailoring.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pant_press_type")
public class PantPress {
	
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
	
@Column(name = "presstype")
private String pressType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPressType() {
		return pressType;
	}

	public void setPressType(String pressType) {
		this.pressType = pressType;
	}

	public PantPress(int id, String pressType) {
		super();
		this.id = id;
		this.pressType = pressType;
	}

	public PantPress() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	
}
