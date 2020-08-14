package com.bjpowernode.crm.vo;

import java.util.List;

/**
 * @author 北京动力节点
 */
public class PaginationVO<T> {

    private Integer total;
    private List<T> dataList;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getDataList() {
        return dataList;
    }

    public void setDataList(List<T> dataList) {
        this.dataList = dataList;
    }
}
