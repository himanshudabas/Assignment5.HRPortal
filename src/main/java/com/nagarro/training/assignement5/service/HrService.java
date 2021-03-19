package com.nagarro.training.assignement5.service;


import com.nagarro.training.assignement5.models.HumanResources;
import com.nagarro.training.assignement5.repositories.HrRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HrService {
	
	@Autowired
	private HrRepository hrRepository;
	
	public boolean validateCredentials(HumanResources hr) {
        System.out.println("[HrService] -> validateCredentials");
        List<HumanResources> hrs = this.hrRepository.findByUsername(hr.getUsername());
        return hrs.size() != 0 && hrs.get(0).getPass().equals(hr.getPass());
    }

}
