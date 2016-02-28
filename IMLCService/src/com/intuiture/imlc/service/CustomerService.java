package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Customer;
import com.intuiture.imlc.json.CustomerJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.CustomerRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class CustomerService {
	@Autowired
	private CommonRepository commonRepository;
	@Autowired
	private CustomerRepository customerRepository;

	// public List<ImportLCGlobalParameterJson> onChangeProductId(String
	// productId) {
	public CustomerJson getCustomerInfoByCustomerId(Long customerId) {
		CustomerJson customerJson = null;
		try {
			Customer customer = customerRepository.findById(customerId);
			if (customer != null) {
				customerJson = TransformDomainToJson.getCustomerJson(customer);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return customerJson;
	}

	public List<CustomerJson> getAllCustomersInfo() {
		List<CustomerJson> customerJsonList = null;
		try {
			List<Customer> customerList = customerRepository.getAllCustomersInfo();
			if (customerList != null && customerList.size() > 0) {
				customerJsonList = new ArrayList<CustomerJson>();
				for (Customer customer : customerList) {
					customerJsonList.add(TransformDomainToJson.getCustomerJson(customer));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return customerJsonList;
	}
}
