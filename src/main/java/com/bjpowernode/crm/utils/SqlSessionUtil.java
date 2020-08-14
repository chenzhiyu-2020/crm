package com.bjpowernode.crm.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author 北京动力节点
 */
public class SqlSessionUtil {
    private SqlSessionUtil() {
    }

    private static final SqlSessionFactory FACTORY;

    static {
        String resource = "mybatis-config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            e.printStackTrace();
        }
        FACTORY = new SqlSessionFactoryBuilder().build(inputStream);
    }

    private static final ThreadLocal<SqlSession> T = new ThreadLocal<SqlSession>();

    public static SqlSession getSqlSession() {
        SqlSession session = T.get();
        if (session == null) {
            session = FACTORY.openSession();
            T.set(session);
        }
        return session;
    }

    public static void myClose(SqlSession session) {
        if (session != null) {
            session.close();
            T.remove();
        }
    }
}