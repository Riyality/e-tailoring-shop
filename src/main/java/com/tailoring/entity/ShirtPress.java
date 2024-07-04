package com.tailoring.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shirt_press_type")
public class ShirtPress {
	
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
	
@Column(name = "shirt_press_type")
private String shirtpressType;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getShirtpressType() {
	return shirtpressType;
}

public void setShirtpressType(String shirtpressType) {
	this.shirtpressType = shirtpressType;
}

public ShirtPress(int id, String shirtpressType) {
	super();
	this.id = id;
	this.shirtpressType = shirtpressType;
}

public ShirtPress() {
	super();
	// TODO Auto-generated constructor stub
}


	

	
}
