package com.bjpowernode.crm.workbench.service.impl;

import com.bjpowernode.crm.utils.SqlSessionUtil;
import com.bjpowernode.crm.workbench.dao.CustomerDao;
import com.bjpowernode.crm.workbench.service.CustomerService;

import java.util.List;

/**
 * @author 北京动力节点
 */
public class CustomerServiceImpl implements CustomerService {
    private final CustomerDao customerDao = SqlSessionUtil.getSqlSession().getMapper(CustomerDao.class);

    public List<String> getCustomerName(String name) {
        return customerDao.getCustomerName(name);
    }
}