package com.bjpowernode.crm.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author 北京动力节点
 */
public class MD5Util {

    public static String getMD5(String password) {
        try {
            // 得到一个信息摘要器
            MessageDigest digest = MessageDigest.getInstance("md5");
            byte[] result = digest.digest(password.getBytes());
            StringBuilder builder = new StringBuilder();
            // 把每一个byte 做一个与运算 0xff;
            for (byte b : result) {
                // 与运算
                // 加盐
                int number = b & 0xff;
                String str = Integer.toHexString(number);
                if (str.length() == 1) {
                    builder.append("0");
                }
                builder.append(str);
            }

            // 标准的md5加密后的结果
            return builder.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

}
