package com.bjpowernode.crm.workbench.dao;

import com.bjpowernode.crm.workbench.domain.TranHistory;

import java.util.List;

/**
 * @author 北京动力节点
 */
public interface TranHistoryDao {

    int save(TranHistory th);

    List<TranHistory> getHistoryListByTranId(String tranId);
}
