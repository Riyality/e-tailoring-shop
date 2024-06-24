package com.tailoring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.PantPressTypeDao;
import com.tailoring.dao.PantTipTypeDao;
import com.tailoring.dao.PantTypeDao;
import com.tailoring.dao.PocketTypeDao;
import com.tailoring.entity.PantPress;
import com.tailoring.entity.PantTip;
import com.tailoring.entity.PantType;
import com.tailoring.entity.PocketType;

@Service
public class DropdownService {

    @Autowired
    private PantTypeDao pantTypeDao;
    
  /*  @Autowired
    private PantTipTypeDao pantTipTypeDao;*/


    @Autowired
    private PocketTypeDao pocketTypeDao;

    @Autowired
    private PantPressTypeDao pantpressDao;

    @Autowired
    private PantTipTypeDao panttiptypeDao;
    public void addPant(List<String> ptype) {
        List<PantType> list1 = new ArrayList<>();
        for (String input : ptype) {
            PantType t = new PantType();
            t.setPantType(input);
            list1.add(t);
        }
        pantTypeDao.saveAll(list1);
    }

    public void addPocket(List<String> inputs) {
        List<PocketType> list = new ArrayList<>();
        for (String input : inputs) {
            PocketType t = new PocketType();
            t.setType(input);
            list.add(t);
        }
        pocketTypeDao.saveAll(list);
    }

    public void addPantpress(List<String> presstype) {
        List<PantPress> list2 = new ArrayList<>();
        for (String input : presstype) {
            PantPress t = new PantPress();
            t.setPressType(input);
            list2.add(t);
        }
        pantpressDao.saveAll(list2);
    }

	public void addPantTip(List<String> tiptype) {
		 List<PantTip> list2 = new ArrayList<>();
	        for (String input : tiptype) {
	        	PantTip t = new PantTip();
	            t.setTiptype(input);
	            list2.add(t);
	        }
	        panttiptypeDao.saveAll(list2);
}
	public List<PantType> getPantTypes() {
	    return (List<PantType>) pantTypeDao.findAll();
	}

	 public List<PantTip> getPantTipTypes() {
		
	        return (List<PantTip>) panttiptypeDao.findAll();
	    }
	  
	  public List<PantPress> getPantPressTypes() {
	        return (List<PantPress>) pantpressDao.findAll();
	    }

	    public List<PocketType> getPocketTypes() {
	        return (List<PocketType>) pocketTypeDao.findAll();
	    }
	    
	    
	

	
	
}
