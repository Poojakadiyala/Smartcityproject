package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.City;

@Repository
public interface CityRepository  extends JpaRepository<City, Integer>
{
	

}
