package com.tailoring.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="employee")
public class Employee {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="contact")
	private String contact;
	
	@Column(name="holiday")
	private String holiday;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="joindate")
	private LocalDate joindate;
	
	@Column(name="age")
	private int age;
	
	@Column(name="gender")
	private String gender;

	public Employee() {
		super();
	}

	public Employee(int id, String name, String contact, String holiday, LocalDate joindate, int age, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.holiday = holiday;
		this.joindate = joindate;
		this.age = age;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getHoliday() {
		return holiday;
	}

	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}

	public LocalDate getJoindate() {
		return joindate;
	}

	public void setJoindate(LocalDate joindate) {
		this.joindate = joindate;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	

}
