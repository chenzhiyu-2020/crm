package com.bjpowernode.crm.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 北京动力节点
 */
public class DateTimeUtil {
    public static String getSysTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
		return sdf.format(date);
    }
}