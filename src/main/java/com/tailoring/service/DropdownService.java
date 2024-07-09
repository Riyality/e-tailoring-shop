package com.tailoring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.PantPressTypeDao;
import com.tailoring.dao.PantTipTypeDao;
import com.tailoring.dao.PantTypeDao;
import com.tailoring.dao.PocketTypeDao;
import com.tailoring.dao.ShirtPocketTypeDao;
import com.tailoring.dao.ShirtPressTypeDao;
import com.tailoring.dao.ShirtTipTypeDao;
import com.tailoring.dao.ShirtTypeDao;
import com.tailoring.entity.PantPress;
import com.tailoring.entity.PantTip;
import com.tailoring.entity.PantType;
import com.tailoring.entity.PocketType;
import com.tailoring.entity.ShirtPocketType;
import com.tailoring.entity.ShirtPress;
import com.tailoring.entity.ShirtTip;
import com.tailoring.entity.ShirtType;

@Service
public class DropdownService {

	@Autowired
	private PantTypeDao pantTypeDao;

	@Autowired
	private PantTipTypeDao pantTipTypeDao;

	@Autowired
	private PocketTypeDao pocketTypeDao;

	@Autowired
	private PantPressTypeDao pantpressDao;

	@Autowired
	private ShirtTypeDao shirttypeDao;

	@Autowired
	private PantTipTypeDao panttiptypeDao;

	@Autowired
	private ShirtTipTypeDao shirttiptypedao;

	@Autowired
	private ShirtPressTypeDao shirtpresstypedao;

	@Autowired
	private ShirtPocketTypeDao shirtpockettypedao;

	public void addPant( List<String> ptype ) {
		List<PantType> list1 = new ArrayList<>();
		for ( String input : ptype ) {
			PantType t = new PantType();
			String[] inpt = input.split( "-" );
			t.setPantType( inpt[ 0 ].trim() );
			t.setRate( Integer.parseInt( inpt[ 1 ].trim() ) );
			list1.add( t );
		}
		pantTypeDao.saveAll( list1 );
	}

	public void addPocket( List<String> inputs ) {
		List<PocketType> list = new ArrayList<>();
		for ( String input : inputs ) {
			PocketType t = new PocketType();
			t.setType( input );
			list.add( t );
		}
		pocketTypeDao.saveAll( list );
	}

	public void addPantpress( List<String> presstype ) {
		List<PantPress> list2 = new ArrayList<>();
		for ( String input : presstype ) {
			PantPress t = new PantPress();
			t.setPressType( input );
			list2.add( t );
		}
		pantpressDao.saveAll( list2 );
	}

	public void addPantTip( List<String> tiptype ) {
		List<PantTip> list2 = new ArrayList<>();
		for ( String input : tiptype ) {
			PantTip t = new PantTip();
			t.setTiptype( input );
			list2.add( t );
		}
		panttiptypeDao.saveAll( list2 );
	}

	public List<PantType> getPantTypes() {
		return pantTypeDao.findAll();
	}

	public List<PantTip> getPantTipTypes() {

		return panttiptypeDao.findAll();
	}

	public List<PantPress> getPantPressTypes() {
		return pantpressDao.findAll();
	}

	public List<PocketType> getPocketTypes() {
		return pocketTypeDao.findAll();
	}

	public void addShirt( List<String> stype ) {
		for ( String type : stype ) {
			ShirtType shirtType = new ShirtType();
			String[] inpt = type.split( "-" );
			shirtType.setShirtType( inpt[ 0 ].trim() );
			shirtType.setRate( Integer.parseInt( inpt[ 1 ].trim() ) );
			shirttypeDao.save( shirtType );
		}
	}

	public List<ShirtType> getShirtTypes() {
		return shirttypeDao.findAll();
	}

	public List<ShirtTip> getShirtTipTypes() {
		return shirttiptypedao.findAll();
	}

	public void addShirtTip( List<String> tiptype ) {
		List<ShirtTip> list2 = new ArrayList<>();
		for ( String input : tiptype ) {
			ShirtTip t = new ShirtTip();
			t.setShirttiptype( input );
			list2.add( t );
		}
		shirttiptypedao.saveAll( list2 );

	}

	public void addShirtpress( List<String> presstype ) {
		List<ShirtPress> list2 = new ArrayList<>();
		for ( String input : presstype ) {
			ShirtPress t = new ShirtPress();
			t.setShirtpressType( input );
			list2.add( t );
		}
		shirtpresstypedao.saveAll( list2 );
	}

	public void addShirtPocket( List<String> inputs ) {
		List<ShirtPocketType> list = new ArrayList<>();
		for ( String input : inputs ) {
			ShirtPocketType t = new ShirtPocketType();
			t.setShirtPocketType( input );
			list.add( t );
		}
		shirtpockettypedao.saveAll( list );
	}

	public List<ShirtPocketType> getShirtPocketTypes() {
		return shirtpockettypedao.findAll();
	}

	public List<ShirtPress> getShirtPressTypes() {
		return shirtpresstypedao.findAll();
	}
}
