package com.tailoring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table( name = "shirtDetails" )
public class ShirtDetailsEntity {

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	public int id;
	public String shirtType;
	public float shirtRate;
	public String shirtQuantity;
	public String shirtShape;
	public String shirtHeight;
	public String shirtChest;
	public String shirtStomach;
	public String shirtShoulder;
	public String shirtHandLoose;
	public String shirtSleeve;
	public String shirtSleeveCup;
	public String shirtCollar;
	public String shirtLoose;
	public String shirtPress;
	public String shirtOther;
	@OneToOne
	@JoinColumn( name = "customer", referencedColumnName = "id" )
	public Customer customer;

	@OneToOne( mappedBy = "shirtDetailsEntity" )
	private Receipt receipt;

}
