package com.tailoring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.HomeDao;
import com.tailoring.entity.PantType;
import com.tailoring.entity.PressType;
import com.tailoring.entity.Tailoring;

@Service
public class HomeService {

    @Autowired
    private HomeDao dao;
    
    @Autowired
   private PantTypeDao pantTypeDao;
    @Autowired
   PressTypeDao pressdao;

    public void add(List<String> inputs) {
        saveTailoringData(inputs);
    }
    public void addpanttype(List<String> ptype) {
        saveTailoringData1(ptype);
    }

    private void saveTailoringData1(List<String> ptype) {
        List<PantType> list1 = new ArrayList<>();
        for (String input : ptype) {
        	PantType t = new PantType();
            t.setPantType(input);
            list1.add(t);
        }
        pantTypeDao.saveAll(list1);
    }

    
    private void saveTailoringData(List<String> inputs) {
        List<Tailoring> list = new ArrayList<>();
        for (String input : inputs) {
            Tailoring t = new Tailoring();
            t.setType(input);
            list.add(t);
        }
        dao.saveAll(list);
    }
    

	/*public void addpresstype(List<String> presstype) {
		saveTailoringData2(presstype);
		
	}
	private void saveTailoringData2(List<String> presstype) {
        List<PressType> list3 = new ArrayList<>();
        for (String input : presstype) {
        	PressType pt = new PressType();
            pt.setPressType(input);
            list3.add(pt);
        }
        
        pressdao.saveAll(list3);
}*/
}
