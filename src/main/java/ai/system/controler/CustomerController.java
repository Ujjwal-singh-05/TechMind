package ai.system.controler;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ai.system.model.Customer;
import ai.system.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	private ICustomerService service;
	@GetMapping("/list")
public String showCustomerList(Map<String,Object> map) {
	List<Customer> customers = service.customerLists();
//	customers.forEach(System.out::println);
	map.put("customers", customers);
	
	return"Customer_List";
}
	@GetMapping("/showForm")
public String showCustomerForm(Map<String,Object> map) {
		Customer customer=new Customer();
		map.put("customer", customer);
	return"Customer_form";
}
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		System.out.println("i am the customer...");
		System.out.println(customer);
		service.saveCustomer(customer);
	return"redirect:/customer/list";
}
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam Integer customerId,Map<String,Object> map) {
		Customer customer = service.updateRecord(customerId);
		map.put("customer", customer);
		return"Customer_form";
	}
	@GetMapping("/delete")
	public String deleteRecord(@RequestParam Integer customerId) {
		service.deleteRecord(customerId);
		return"redirect:/customer/list";
	}
}

