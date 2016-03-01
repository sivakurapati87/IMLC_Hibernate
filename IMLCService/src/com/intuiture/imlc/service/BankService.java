package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Bank;
import com.intuiture.imlc.json.BankJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.PrimaryDetailRepository;
import com.intuiture.imlc.util.TransformDomainToJson;

@Service
@Transactional
public class BankService {
	@Autowired
	private CommonRepository commonRepository;
	@Autowired
	private PrimaryDetailRepository primaryDetailRepository;

	// public Boolean saveOrUpdatePFInfo(ImportLCIssueJson importLCIssueJson) {
	// ImportLCIssue importLCIssue = null;
	// try {
	// if (importLCIssueJson.getImportLCIssueId() != null) {
	// ImportLCIssue existedImportLCIssue =
	// primaryDetailRepository.findById(importLCIssueJson.getImportLCIssueId());
	// existedImportLCIssue.setIsDeleted(Boolean.TRUE);
	// commonRepository.update(existedImportLCIssue);
	// }
	// importLCIssue = new ImportLCIssue();
	// TransformJsonToDomain.getImportLCIssueFromJson(importLCIssue,
	// importLCIssueJson);
	// commonRepository.persist(importLCIssue);
	// } catch (Exception e) {
	// e.printStackTrace();
	// return false;
	// }
	// return true;
	// }

	/**
	 * This method is to get all the primary details
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<BankJson> getAllBanks() {
		List<BankJson> bankJsonList = null;
		try {
			List<Bank> bankList = (List<Bank>) commonRepository.getAll(Bank.class);
			if (bankList != null && bankList.size() > 0) {
				bankJsonList = new ArrayList<BankJson>();
				for (Bank bank : bankList) {
					bankJsonList.add(TransformDomainToJson.getBankJson(bank));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bankJsonList;
	}

}
