package com.tailoring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table( name = "pantDetails" )
public class PantDetailsEntity {

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	public int id;
	public String pantType;
	public float pantRate;
	public String pantQuantity;
	public String pantShape;
	public String pantHeight;
	public String pantWaist;
	public String pantSeat;
	public String pantThigh;
	public String pantKnee;
	public String pantLegsBottom;
	public String pantPress;
	public String pantTip;
	public String pantPocket;
	public String pantOther;
	public int customerId;

	@OneToOne( mappedBy = "pantDetailsEntity" )
	private Receipt receipt;

}
