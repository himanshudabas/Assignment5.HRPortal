package com.nagarro.training.assignement5.repositories;

import com.nagarro.training.assignement5.models.HumanResources;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HrRepository extends JpaRepository<HumanResources, Long> {
	
	List<HumanResources> findByUsername(String username);
	
}
