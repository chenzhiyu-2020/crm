package com.bjpowernode.crm.utils;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 北京动力节点
 */
public class PrintJson {
    //将boolean值解析为json串
    public static void printJsonFlag(HttpServletResponse response, boolean flag) {
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("success", flag);
        objectMapper(response, map);
    }

    //将对象解析为json串
    public static void printJsonObj(HttpServletResponse response, Object obj) {
        /*
         *
         * Person p
         * 	id name age
         * {"id":"?","name":"?","age":?}
         *
         * List<Person> pList
         * [{"id":"?","name":"?","age":?},{"id":"?","name":"?","age":?},{"id":"?","name":"?","age":?}...]
         *
         * Map
         * 	key value
         * {key:value}
         *
         *
         */
        objectMapper(response, obj);
    }

    private static void objectMapper(HttpServletResponse response, Object obj) {
        ObjectMapper om = new ObjectMapper();
        try {
            String json = om.writeValueAsString(obj);
            response.getWriter().print(json);
        } catch (JsonGenerationException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}