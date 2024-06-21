package com.tailoring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "shirtDetails")
public class ShirtDetailsEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	public String shirtType;
	public float  shirtRate;
	public String shirtQuantity;
	public String shirtShape;
	public String shirtHeight;
	public String shirtChest;
	public String shirtStomach;
	public String shirtShoulder;
	public String shirtHandLoose;
	public String shirtSleeve ;
	public String shirtSleeveCup;
	public String shirtCollar;
	public String shirtLoose;
	public String shirtPress;
	public String shirtOther;
	public int    customerId;
	
	
	public ShirtDetailsEntity() {}


	public ShirtDetailsEntity(int id, String shirtType, float shirtRate, String shirtQuantity, String shirtShape,
			String shirtHeight, String shirtChest, String shirtStomach, String shirtShoulder, String shirtHandLoose,
			String shirtSleeve, String shirtSleeveCup, String shirtCollar, String shirtLoose, String shirtPress,
			String shirtOther, int customerId) {
		super();
		this.id = id;
		this.shirtType = shirtType;
		this.shirtRate = shirtRate;
		this.shirtQuantity = shirtQuantity;
		this.shirtShape = shirtShape;
		this.shirtHeight = shirtHeight;
		this.shirtChest = shirtChest;
		this.shirtStomach = shirtStomach;
		this.shirtShoulder = shirtShoulder;
		this.shirtHandLoose = shirtHandLoose;
		this.shirtSleeve = shirtSleeve;
		this.shirtSleeveCup = shirtSleeveCup;
		this.shirtCollar = shirtCollar;
		this.shirtLoose = shirtLoose;
		this.shirtPress = shirtPress;
		this.shirtOther = shirtOther;
		this.customerId = customerId;
	}


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


	public float getShirtRate() {
		return shirtRate;
	}


	public void setShirtRate(float shirtRate) {
		this.shirtRate = shirtRate;
	}


	public String getShirtQuantity() {
		return shirtQuantity;
	}


	public void setShirtQuantity(String shirtQuantity) {
		this.shirtQuantity = shirtQuantity;
	}


	public String getShirtShape() {
		return shirtShape;
	}


	public void setShirtShape(String shirtShape) {
		this.shirtShape = shirtShape;
	}


	public String getShirtHeight() {
		return shirtHeight;
	}


	public void setShirtHeight(String shirtHeight) {
		this.shirtHeight = shirtHeight;
	}


	public String getShirtChest() {
		return shirtChest;
	}


	public void setShirtChest(String shirtChest) {
		this.shirtChest = shirtChest;
	}


	public String getShirtStomach() {
		return shirtStomach;
	}


	public void setShirtStomach(String shirtStomach) {
		this.shirtStomach = shirtStomach;
	}


	public String getShirtShoulder() {
		return shirtShoulder;
	}


	public void setShirtShoulder(String shirtShoulder) {
		this.shirtShoulder = shirtShoulder;
	}


	public String getShirtHandLoose() {
		return shirtHandLoose;
	}


	public void setShirtHandLoose(String shirtHandLoose) {
		this.shirtHandLoose = shirtHandLoose;
	}


	public String getShirtSleeve() {
		return shirtSleeve;
	}


	public void setShirtSleeve(String shirtSleeve) {
		this.shirtSleeve = shirtSleeve;
	}


	public String getShirtSleeveCup() {
		return shirtSleeveCup;
	}


	public void setShirtSleeveCup(String shirtSleeveCup) {
		this.shirtSleeveCup = shirtSleeveCup;
	}


	public String getShirtCollar() {
		return shirtCollar;
	}


	public void setShirtCollar(String shirtCollar) {
		this.shirtCollar = shirtCollar;
	}


	public String getShirtLoose() {
		return shirtLoose;
	}


	public void setShirtLoose(String shirtLoose) {
		this.shirtLoose = shirtLoose;
	}


	public String getShirtPress() {
		return shirtPress;
	}


	public void setShirtPress(String shirtPress) {
		this.shirtPress = shirtPress;
	}


	public String getShirtOther() {
		return shirtOther;
	}


	public void setShirtOther(String shirtOther) {
		this.shirtOther = shirtOther;
	}


	public int getCustomerId() {
		return customerId;
	}


	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

}
