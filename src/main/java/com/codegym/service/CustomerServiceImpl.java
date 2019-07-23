package com.codegym.service;

import com.codegym.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customerMap;
    static {
        customerMap = new HashMap<>();
        customerMap.put(1,new Customer(1,"Nam","nam@gmail.com","Ha Noi"));
        customerMap.put(2,new Customer(2,"Van","van@gmail.com","Nghe An"));
        customerMap.put(3,new Customer(3,"Trung","trung@gmail.com","Long An"));
        customerMap.put(4,new Customer(4,"Hung","hung@gmail.com","Sai Gon"));
        customerMap.put(5,new Customer(5,"Dat","dat@gmail.com","Dak Lak"));
        customerMap.put(6,new Customer(6,"Tran","tran@gmail.com","Can Tho"));
        customerMap.put(7,new Customer(7,"Quang","quang@gmail.com","Vinh Long"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public void save(Customer customer) {
        customerMap.put(customer.getId(),customer);
    }

    @Override
    public Customer findById(int id) {
        return customerMap.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerMap.put(id,customer);
    }

    @Override
    public void remove(int id) {
        customerMap.remove(id);
    }
}
