package com.intuiture.imlc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intuiture.imlc.entities.Global_Parameters;
import com.intuiture.imlc.json.GlobalParameterJson;
import com.intuiture.imlc.json.LookUpDetailJson;
import com.intuiture.imlc.repos.CommonRepository;
import com.intuiture.imlc.repos.GlobalParameterRepository;
import com.intuiture.imlc.util.TransformDomainToJson;
import com.intuiture.imlc.util.TransformJsonToDomain;

@Service
@Transactional
public class GlobalParameterService {
	@Autowired
	private GlobalParameterRepository globalParameterDeclarationRepository;
	@Autowired
	private CommonRepository commonRepository;

	// public List<ImportLCGlobalParameterJson> onChangeProductId(String
	// productId) {
	public GlobalParameterJson findGlobalParameterByProductId_TemplateType(String productId, String template) {
		List<Global_Parameters> global_ParameterList = globalParameterDeclarationRepository.findGlobalParameterByProductId_TemplateType(productId, template);
		List<GlobalParameterJson> jsonList = new ArrayList<GlobalParameterJson>();
		if (global_ParameterList != null && global_ParameterList.size() > 0) {
			for (Global_Parameters global_Parameters : global_ParameterList) {
				jsonList.add(TransformDomainToJson.getImportLCGlobalParameterJson(global_Parameters));
			}
		}
		return jsonList.size() > 0 ? jsonList.get(0) : null;

	}

	@SuppressWarnings("unchecked")
	public List<GlobalParameterJson> findAllProductIds() {
		List<Global_Parameters> global_ParameterList = (List<Global_Parameters>) globalParameterDeclarationRepository.findAllProductIds();
		List<GlobalParameterJson> jsonList = null;
		if (global_ParameterList != null && global_ParameterList.size() > 0) {
			jsonList = new ArrayList<GlobalParameterJson>();
			for (Global_Parameters global_Parameters : global_ParameterList) {
				jsonList.add(TransformDomainToJson.getImportLCGlobalParameterJson(global_Parameters));
			}
		}
		return jsonList;

	}

	public List<LookUpDetailJson> findTemplateTypesByProductId(String productId) {
		List<Global_Parameters> global_ParameterList = globalParameterDeclarationRepository.findGlobalParameterByProductId(productId);
		List<LookUpDetailJson> jsonList = null;
		if (global_ParameterList != null && global_ParameterList.size() > 0) {
			jsonList = new ArrayList<LookUpDetailJson>();
			for (Global_Parameters global_Parameters : global_ParameterList) {
				LookUpDetailJson json = new LookUpDetailJson();
				json.setDescription(global_Parameters.getType_Of_LC());
				jsonList.add(json);
			}
		}
		return jsonList;

	}

	public Long checkTheExistenceOfRecords() {
		Long noOfRecords = globalParameterDeclarationRepository.checkTheExistenceOfRecords();
		return noOfRecords;

	}

	public Boolean saveOrUpdatePFInfo(GlobalParameterJson globalParameterJson) {
		Global_Parameters global_Parameters = null;
		try {
			if (globalParameterJson.getGlobal_ParameterId() != null && !globalParameterJson.getGlobal_ParameterId().equals(0)) {
				global_Parameters = globalParameterDeclarationRepository.findById(globalParameterJson.getGlobal_ParameterId());
			} else {
				global_Parameters = new Global_Parameters();
			}
			TransformJsonToDomain.getGlobal_Parameters(global_Parameters, globalParameterJson);
			if (globalParameterJson.getGlobal_ParameterId() != null && !globalParameterJson.getGlobal_ParameterId().equals(0)) {
				commonRepository.update(global_Parameters);
			} else {
				commonRepository.persist(global_Parameters);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
