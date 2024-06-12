package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tailoring.service.HomeService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    private HomeService service;

    @GetMapping("/")
    public String loginPage() {
        return "login/login";
    }

    @GetMapping("/home")
    public String dashboard() {
        return "index";
    }

    @GetMapping("/addCustomerForm")
    public String addCustomerForm() {
        return "addCustomer";
    }

    
    @GetMapping("/addtype")
    public String addtype() {
        return "add";
    }

    @PostMapping("/pocket-type")
    @ResponseBody
    public Map<String, Object> handleData(@RequestBody Map<String, List<String>> requestData) {
        List<String> inputs = requestData.get("inputs");
        service.add(inputs);

        Map<String, Object> response = new HashMap<>();
        response.put("message", "Data received successfully");
        response.put("receivedData", inputs);
        return response;
    }

    @GetMapping("/addptype")
    public String addpanttype() {
        return "add";
    }

    @PostMapping("/your-controller")
    @ResponseBody
    public Map<String, Object> handleData1(@RequestBody Map<String, List<String>> requestData) {
        List<String> ptype = requestData.get("ptype");
        System.out.println("Received inputs: " + ptype);
        service.addpanttype(ptype);

        Map<String, Object> response = new HashMap<>();
        response.put("message", "Data received successfully");
        response.put("receivedData", ptype);
        return response;
    }
    
   /* @GetMapping("/addpresstype")
    public String addpresstype() {
        return "add";
    }

    @PostMapping("/controller")
    @ResponseBody
    public Map<String, Object> handleData2(@RequestBody Map<String, List<String>> requestData) {
        List<String> presstype = requestData.get("presstype");
        System.out.println("Received inputs: " + presstype);
        service.addpresstype(presstype);

        Map<String, Object> response = new HashMap<>();
        response.put("message", "Data received successfully");
        response.put("receivedData", presstype);
        return response;
    }*/
}
