package com.bjpowernode.crm.utils;

import java.util.UUID;

/**
 * @author 北京动力节点
 */
public class UUIDUtil {
    public static String getUUID() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}