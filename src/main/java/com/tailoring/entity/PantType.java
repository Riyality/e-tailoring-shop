package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pant_type")
public class PantType {
	
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;

@Column(name = "ptype")
private String pantType;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPantType() {
	return pantType;
}
public void setPantType(String pantType) {
	this.pantType = pantType;
}
public PantType(int id, String pantType) {
	super();
	this.id = id;
	this.pantType = pantType;
}
public PantType() {
	super();
	// TODO Auto-generated constructor stub
}


}
