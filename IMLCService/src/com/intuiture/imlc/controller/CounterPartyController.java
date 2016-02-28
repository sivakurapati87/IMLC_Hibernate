package com.intuiture.imlc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intuiture.imlc.json.CounterpartyJson;
import com.intuiture.imlc.service.CounterPartyService;

@Controller
@RequestMapping("/CounterPartyController")
public class CounterPartyController {

	@Autowired
	private CounterPartyService counterPartyService;

	@RequestMapping(value = "/getCounterPartyByCounterPartyId/{counterPartyId}", method = RequestMethod.GET)
	@ResponseBody
	public CounterpartyJson getCounterPartyByCounterPartyId(@PathVariable("counterPartyId") String counterPartyId) {
		return counterPartyService.getCounterPartyByCounterPartyId(counterPartyId);
	}
	@RequestMapping(value = "/getAllCounterParty", method = RequestMethod.GET)
	@ResponseBody
	public List<CounterpartyJson> getAllCounterParty() {
		return counterPartyService.getAllCounterParty();
	}

}
