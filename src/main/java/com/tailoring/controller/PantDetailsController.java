package com.tailoring.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tailoring.entity.PantDetailsEntity;
import com.tailoring.service.PantDetailsService;

@Controller
@RequestMapping( "/recipts" )
public class PantDetailsController {

	@Autowired
	PantDetailsService pantDetailsService;

	@PostMapping( "/addPDetails" )
	public String addPantDetails( @ModelAttribute PantDetailsEntity pantDetailsEntity, Model model ) {
		pantDetailsService.addPantDetails( pantDetailsEntity );
		model.addAttribute( "message", "Pant Added Successfully" );
		return "success";
	}

	@GetMapping( "pantList" )
	public List<PantDetailsEntity> pantDetails( Model model ) {
		List<PantDetailsEntity> pantList = pantDetailsService.pantDetails();
		model.addAttribute( "pl", pantList );
		return pantList;
	}

	@GetMapping( "updatePDetails/{id}" )
	public String updatePantDetails( @PathVariable int id, Model model ) {
		Optional<PantDetailsEntity> pantOpt = pantDetailsService.updatePantDetails( id );
		pantOpt.ifPresent( getPDetails -> model.addAttribute( "getPants", getPDetails ) );
		return "Pant Update....";
	}

	@GetMapping( "deletePDetails/{id}" )
	public String deletePantDetails( @PathVariable int id ) {
		pantDetailsService.deletePantDetails( id );
		return "Delete Pant";
	}
}
