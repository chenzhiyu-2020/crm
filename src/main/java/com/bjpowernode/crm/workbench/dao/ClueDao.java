package com.bjpowernode.crm.workbench.dao;

import com.bjpowernode.crm.workbench.domain.Clue;

import java.util.List;
import java.util.Map;

/**
 * @author 北京动力节点
 */
public interface ClueDao {
    int save(Clue c);

    Clue detail(String id);

    Clue getById(String clueId);

    int delete(String clueId);

    int getTotalByCondition(Map<String, Object> map);

    List<Clue> getClueListByCondition(Map<String, Object> map);

    int deletes(String[] ids);
}