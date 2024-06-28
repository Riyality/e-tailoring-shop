package com.tailoring.entity;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import com.tailoring.dto.PantRequestDto;
import com.tailoring.dto.ShirtRequestDto;

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

	private String name;

	private String address;

	private String status;

	private Float amount;

	private ShirtRequestDto shirtDetails = null;
	private PantRequestDto pantDetails = null;
}
