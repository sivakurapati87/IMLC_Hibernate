package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.ImportLCIssue;
import com.intuiture.imlc.entities.Swift;
import com.intuiture.imlc.json.ImportLCIssueJson;
import com.intuiture.imlc.json.SwiftJson;
import com.intuiture.imlc.repos.PrimaryDetailRepository;
import com.intuiture.imlc.repos.SwiftRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class SwiftService {
	@Autowired
	private SwiftRepository swiftRepository;
	@Autowired
	private PrimaryDetailRepository primaryDetailRepository;

	public List<SwiftJson> getAllSwiftByTransactionType(String transaction_Type, String transaction_Ref_number) {
		List<SwiftJson> swiftJsonList = null;
		try {
			List<Swift> swiftList = swiftRepository.getAllSwiftByTransactionType(transaction_Type);
			if (swiftList != null && swiftList.size() > 0) {
				ImportLCIssue importLCIssue = primaryDetailRepository.findByTransactionNumber(transaction_Ref_number);
				if (importLCIssue != null) {
					ImportLCIssueJson importLCIssueJson = TransformDomainToJson.getImportLCIssueJson(importLCIssue);
					swiftJsonList = new ArrayList<SwiftJson>();
					for (Swift swift : swiftList) {
						swiftJsonList.add(TransformDomainToJson.getSwiftJson(swift, importLCIssueJson));
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return swiftJsonList;
	}
}
