package com.tailoring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tailoring.entity.PantPress;
import com.tailoring.entity.PantTip;
import com.tailoring.entity.PantType;
import com.tailoring.entity.PocketType;
import com.tailoring.service.DropdownService;

@Controller
@RequestMapping("/dropdowns")
public class DropdownController {

	@Autowired
	private DropdownService service;
	
	@GetMapping("/add-dropdown")
	public String addDropdown() {
		return "add";
	}

	@PostMapping("/pockets")
	@ResponseBody
	public Map<String, Object> addPocket(@RequestBody Map<String, List<String>> requestData) {
		List<String> inputs = requestData.get("inputs");
		System.out.println("Received inputs: " + inputs);
		service.addPocket(inputs);

		Map<String, Object> response = new HashMap<>();
		response.put("message", "Data received successfully ");
		response.put("receivedData", inputs);
		return response;
		}
	
	

	@PostMapping("/pants")
	@ResponseBody
	public Map<String, Object> addPant(@RequestBody Map<String, List<String>> requestData) {
		List<String> ptype = requestData.get("inputs");
		System.out.println("Received inputs: " + ptype);
		service.addPant(ptype);

		Map<String, Object> response = new HashMap<>();
		response.put("message", "Data received successfully");
		response.put("receivedData", ptype);
		return response;
	}
	
	
	@PostMapping("/pantpress")
	@ResponseBody
	public Map<String, Object> addPantpress(@RequestBody Map<String, List<String>> requestData) {
		List<String> presstype = requestData.get("inputs");
		System.out.println("Received inputs: " + presstype);
		service.addPantpress(presstype);

		Map<String, Object> response = new HashMap<>();
		response.put("message", "Data received successfully");
		response.put("receivedData", presstype);
		return response;
	}
	
	@PostMapping("/panttip")
	@ResponseBody
	public Map<String, Object> addPantTip(@RequestBody Map<String, List<String>> requestData) {
		List<String> tiptype = requestData.get("inputs");
		System.out.println("Received inputs: " + tiptype);
		service.addPantTip(tiptype);

		Map<String, Object> response = new HashMap<>();
		response.put("message", "Data received successfully");
		response.put("receivedData", tiptype);
		return response;
	}
	@GetMapping("/pant-types")
	@ResponseBody
	public List<PantType> getPantTypes() {
	    return service.getPantTypes();
	}
	
	 @GetMapping("/pant-tip-types")
	    @ResponseBody
	    public List<PantTip> getPantTipTypes() {
		  System.out.println("1234"+service.getPantTipTypes());
	        return service.getPantTipTypes();
	    }
	 
	 @GetMapping("/pant-press-types")
	    @ResponseBody
	    public List<PantPress> getPantPressTypes() {
	        return service.getPantPressTypes();
	    }

	    @GetMapping("/pocket-types")
	    @ResponseBody
	    public List<PocketType> getPocketTypes() {
	        return service.getPocketTypes();
	    }
	

	
	
}
