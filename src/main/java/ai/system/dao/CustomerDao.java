package ai.system.dao;

import org.springframework.data.repository.CrudRepository;

import ai.system.model.Customer;

public interface CustomerDao extends CrudRepository<Customer, Integer> {

}
