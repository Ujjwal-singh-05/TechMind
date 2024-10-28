package ai.system.service;

import java.util.List;

import ai.system.model.Customer;

public interface ICustomerService {
public List<Customer> customerLists();
public void saveCustomer(Customer customer);
public Customer updateRecord(Integer customerId);
public void deleteRecord(Integer customerId);

}
