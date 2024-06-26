package com.tailoring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "signin")
public class SignInEntity {
	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		public int id;
		public String email;
		public String password;
		public SignInEntity() {}
		public SignInEntity(int id, String email, String password) {
			super();
			this.id = id;
			this.email = email;
			this.password = password;
		}
		 
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
				
}
