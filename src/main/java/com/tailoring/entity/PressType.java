package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "press_type")
public class PressType {

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
	public PressType(int id, String pressType) {
		super();
		this.id = id;
		this.pressType = pressType;
	}
	public PressType() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
