package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Counterparty;
import com.intuiture.imlc.json.CounterpartyJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.CounterPartyRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class CounterPartyService {
	@Autowired
	private CommonRepository commonRepository;
	@Autowired
	private CounterPartyRepository counterPartyRepository;

	/**
	 * This method is to get the counterparty based on counterpartyId
	 * 
	 * @param counterPartyId
	 * @return
	 */
	public CounterpartyJson getCounterPartyByCounterPartyId(String counterPartyId) {
		CounterpartyJson counterpartyJson = null;
		try {
			Counterparty counterparty = counterPartyRepository.findById(counterPartyId);
			if (counterparty != null) {
				counterpartyJson = TransformDomainToJson.getCounterpartyJson(counterparty);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return counterpartyJson;
	}

	/**
	 * This method is to get the all counterparties
	 * 
	 * @return
	 */
	public List<CounterpartyJson> getAllCounterParty() {
		List<CounterpartyJson> counterpartyJsonList = null;
		try {
			List<Counterparty> counterpartiesList = counterPartyRepository.getAllCounterParty();
			if (counterpartiesList != null && counterpartiesList.size() > 0) {
				counterpartyJsonList = new ArrayList<CounterpartyJson>();
				for (Counterparty counterparty : counterpartiesList) {
					counterpartyJsonList.add(TransformDomainToJson.getCounterpartyJson(counterparty));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return counterpartyJsonList;
	}
}
