package com.tailoring.mapper;

import org.springframework.stereotype.Component;

import com.tailoring.dto.PantRequestDto;
import com.tailoring.dto.ShirtRequestDto;
import com.tailoring.entity.PantDetailsEntity;
import com.tailoring.entity.ShirtDetailsEntity;

@Component
public class ReceiptMapper {

	public PantDetailsEntity toPantEntity( PantRequestDto dto ) {
		PantDetailsEntity e = new PantDetailsEntity();
		e.setPantType( dto.getPantType() );
		if ( dto.getPantRate() != "" )
			e.setPantRate( Float.parseFloat( dto.getPantRate() ) );
		e.setPantQuantity( dto.getPantQuantity() );
		e.setPantShape( dto.getPantShape() );
		e.setPantHeight( dto.getPantHeight() );
		e.setPantWaist( dto.getPantWaist() );
		e.setPantSeat( dto.getPantSeat() );
		e.setPantThigh( dto.getPantThigh() );
		e.setPantKnee( dto.getPantKnee() );
		e.setPantLegsBottom( dto.getPantLegsBottom() );
		e.setPantPress( dto.getPantPress() );
		e.setPantTip( dto.getPantTip() );
		e.setPantPocket( dto.getPantPocket() );
		e.setPantOther( dto.getPantOther() );
		return e;
	}

	public ShirtDetailsEntity toShirtEntity( ShirtRequestDto dto ) {
		ShirtDetailsEntity e = new ShirtDetailsEntity();
		e.setShirtType( dto.getShirtType() );
		if ( dto.getShirtRate() != "" )
			e.setShirtRate( Float.parseFloat( dto.getShirtRate() ) );
		e.setShirtQuantity( dto.getShirtQuantity() );
		e.setShirtShape( dto.getShirtShape() );
		e.setShirtHeight( dto.getShirtHeight() );
		e.setShirtChest( dto.getShirtChest() );
		e.setShirtStomach( dto.getShirtStomach() );
		e.setShirtShoulder( dto.getShirtShoulder() );
		e.setShirtHandLoose( dto.getShirtHandLoose() );
		e.setShirtSleeve( dto.getShirtSleeve() );
		e.setShirtSleeveCup( dto.getShirtSleeveCup() );
		e.setShirtCollar( dto.getShirtCollar() );
		e.setShirtLoose( dto.getShirtLoose() );
		e.setShirtPress( dto.getShirtPress() );
		e.setShirtOther( dto.getShirtOther() );

		return e;
	}
}
