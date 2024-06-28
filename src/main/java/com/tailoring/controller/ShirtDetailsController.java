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

import com.tailoring.entity.ShirtDetailsEntity;
import com.tailoring.service.ShirtDetailsService;

@Controller
@RequestMapping( "/recipts" )
public class ShirtDetailsController {

	@Autowired
	private ShirtDetailsService shirtDetailsService;

	@PostMapping( "/addSDetail" )
	public String addShirtDetails( @ModelAttribute ShirtDetailsEntity shirtDetailsEntity, Model model ) {
		shirtDetailsService.addShirtDetails( shirtDetailsEntity );
		return "redirect:/success";
	}

	@GetMapping( "shirtList" )
	public List<ShirtDetailsEntity> shirtDetails( Model model ) {
		List<ShirtDetailsEntity> shirtList = shirtDetailsService.shirtDetails();
		model.addAttribute( "pl", shirtList );
		return shirtList;
	}

	@GetMapping( "updateSDetails/{id}" )
	public String updateShirtDetails( @PathVariable int id, Model model ) {
		Optional<ShirtDetailsEntity> shirtOpt = shirtDetailsService.updateShirtDetails( id );
		shirtOpt.ifPresent( getSDetails -> model.addAttribute( "getShirts", getSDetails ) );
		return "shirt Update....";
	}

	@GetMapping( "deleteSDetails/{id}" )
	public String deleteShirtDetails( @PathVariable int id ) {
		shirtDetailsService.deleteShirtDetails( id );
		return "Delete shirt";
	}
}
