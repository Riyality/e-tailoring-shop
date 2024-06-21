package com.tailoring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pantDetails")
public class PantDetailsEntity {
	
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
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
		public int    customerId;
		
		
		public PantDetailsEntity() {}


		public PantDetailsEntity(int id, String pantType, float pantRate, String pantQuantity, String pantShape,
				String pantHeight, String pantWaist, String pantSeat, String pantThigh, String pantKnee,
				String pantLegsBottom, String pantPress, String pantTip, String pantPocket, String pantOther,
				int customerId) {
			super();
			this.id = id;
			this.pantType = pantType;
			this.pantRate = pantRate;
			this.pantQuantity = pantQuantity;
			this.pantShape = pantShape;
			this.pantHeight = pantHeight;
			this.pantWaist = pantWaist;
			this.pantSeat = pantSeat;
			this.pantThigh = pantThigh;
			this.pantKnee = pantKnee;
			this.pantLegsBottom = pantLegsBottom;
			this.pantPress = pantPress;
			this.pantTip = pantTip;
			this.pantPocket = pantPocket;
			this.pantOther = pantOther;
			this.customerId = customerId;
		}


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


		public float getPantRate() {
			return pantRate;
		}


		public void setPantRate(float pantRate) {
			this.pantRate = pantRate;
		}


		public String getPantQuantity() {
			return pantQuantity;
		}


		public void setPantQuantity(String pantQuantity) {
			this.pantQuantity = pantQuantity;
		}


		public String getPantShape() {
			return pantShape;
		}


		public void setPantShape(String pantShape) {
			this.pantShape = pantShape;
		}


		public String getPantHeight() {
			return pantHeight;
		}


		public void setPantHeight(String pantHeight) {
			this.pantHeight = pantHeight;
		}


		public String getPantWaist() {
			return pantWaist;
		}


		public void setPantWaist(String pantWaist) {
			this.pantWaist = pantWaist;
		}


		public String getPantSeat() {
			return pantSeat;
		}


		public void setPantSeat(String pantSeat) {
			this.pantSeat = pantSeat;
		}


		public String getPantThigh() {
			return pantThigh;
		}


		public void setPantThigh(String pantThigh) {
			this.pantThigh = pantThigh;
		}


		public String getPantKnee() {
			return pantKnee;
		}


		public void setPantKnee(String pantKnee) {
			this.pantKnee = pantKnee;
		}


		public String getPantLegsBottom() {
			return pantLegsBottom;
		}


		public void setPantLegsBottom(String pantLegsBottom) {
			this.pantLegsBottom = pantLegsBottom;
		}


		public String getPantPress() {
			return pantPress;
		}


		public void setPantPress(String pantPress) {
			this.pantPress = pantPress;
		}


		public String getPantTip() {
			return pantTip;
		}


		public void setPantTip(String pantTip) {
			this.pantTip = pantTip;
		}


		public String getPantPocket() {
			return pantPocket;
		}


		public void setPantPocket(String pantPocket) {
			this.pantPocket = pantPocket;
		}


		public String getPantOther() {
			return pantOther;
		}


		public void setPantOther(String pantOther) {
			this.pantOther = pantOther;
		}


		public int getCustomerId() {
			return customerId;
		}


		public void setCustomerId(int customerId) {
			this.customerId = customerId;
		}
}
