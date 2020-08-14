package com.bjpowernode.crm.utils;

/**
 * @author 北京动力节点
 */
public class ServiceFactory {
    public static Object getService(Object service) {
        return new TransactionInvocationHandler(service).getProxy();
    }
}