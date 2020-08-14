package com.bjpowernode.crm.workbench.dao;

import com.bjpowernode.crm.workbench.domain.Clue;

/**
 * @author 北京动力节点
 */
public interface ClueDao {
    int save(Clue c);

    Clue detail(String id);

    Clue getById(String clueId);

    int delete(String clueId);
}