package com.tailoring.entity;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ReceiptContainer {

	private Long id;

	@DateTimeFormat( pattern = "yyyy-MM-dd" )
	private LocalDate currentDate;
	@DateTimeFormat( pattern = "yyyy-MM-dd" )
	private LocalDate deliveryDate;

	private String contact;

	private int customerId;

	private String status;

	private ShirtDetailsEntity shirtDetails;
	private PantDetailsEntity pantDetails;
}
