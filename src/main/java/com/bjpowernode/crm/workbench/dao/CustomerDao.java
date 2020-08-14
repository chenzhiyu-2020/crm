package com.bjpowernode.crm.workbench.dao;

import com.bjpowernode.crm.workbench.domain.Customer;

import java.util.List;

/**
 * @author 北京动力节点
 */
public interface CustomerDao {
    Customer getCustomerByName(String company);

    int save(Customer cus);

    List<String> getCustomerName(String name);
}