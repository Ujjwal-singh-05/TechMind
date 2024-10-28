package ai.system.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ai.system.dao.CustomerDao;
import ai.system.model.Customer;
@Service
public class CustomerServiceImpl implements ICustomerService {
	@Autowired
	private CustomerDao repo;
	
public List<Customer> customerLists() {
		// TODO Auto-generated method stub
	List<Customer> list = (List<Customer>) repo.findAll();
//	list.forEach(System.out::println);
		return  list;
	}

@Override
public void saveCustomer(Customer customer) {
	// TODO Auto-generated method stub
	repo.save(customer);
}

@Override
public Customer updateRecord(Integer customerId) {
	// TODO Auto-generated method stub
	Optional<Customer> id = repo.findById(customerId);
	
	return id.get();
}

@Override
public void deleteRecord(Integer customerId) {
	// TODO Auto-generated method stub
	repo.deleteById(customerId);
}

}
