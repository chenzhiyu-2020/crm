package com.bjpowernode.crm.workbench.service.impl;

import com.bjpowernode.crm.settings.dao.UserDao;
import com.bjpowernode.crm.settings.domain.User;
import com.bjpowernode.crm.utils.SqlSessionUtil;
import com.bjpowernode.crm.vo.PaginationVO;
import com.bjpowernode.crm.workbench.dao.ActivityDao;
import com.bjpowernode.crm.workbench.dao.ActivityRemarkDao;
import com.bjpowernode.crm.workbench.domain.Activity;
import com.bjpowernode.crm.workbench.domain.ActivityRemark;
import com.bjpowernode.crm.workbench.service.ActivityService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 北京动力节点
 */
public class ActivityServiceImpl implements ActivityService {
    private final ActivityDao activityDao = SqlSessionUtil.getSqlSession().getMapper(ActivityDao.class);
    private final ActivityRemarkDao activityRemarkDao = SqlSessionUtil.getSqlSession().getMapper(ActivityRemarkDao.class);
    private final UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);

    public boolean save(Activity activity) {
        return 1 == activityDao.save(activity);
    }

    public PaginationVO<Activity> pageList(Map<String, Object> map) {
        //取得total,动态查询总条数
        int total = activityDao.getTotalByCondition(map);
        //取得dataList
        List<Activity> dataList = activityDao.getActivityListByCondition(map);
        //创建一个vo对象，将total和dataList封装到vo中
        PaginationVO<Activity> vo = new PaginationVO<Activity>();
        vo.setTotal(total);
        vo.setDataList(dataList);
        //将vo返回
        return vo;
    }

    public boolean delete(String[] ids) {
        //查询出需要删除的备注的数量getCountByAids
        //删除备注，返回受到影响的条数（实际删除的数量）deleteByAids
        //删除市场活动delete
        return activityRemarkDao.getCountByAids(ids) == activityRemarkDao.deleteByAids(ids) && activityDao.delete(ids) == ids.length;
    }

    public Map<String, Object> getUserListAndActivity(String id) {
        //取uList
        List<User> uList = userDao.getUserList();
        //取a
        Activity a = activityDao.getById(id);
        //将uList和a打包到map中
        Map<String, Object> map = new HashMap<String, Object>(16);
        map.put("uList", uList);
        map.put("a", a);
        //返回map就可以了
        return map;
    }

    public boolean update(Activity a) {
        return activityDao.update(a) == 1;
    }

    public Activity detail(String id) {
        return activityDao.detail(id);
    }

    public List<ActivityRemark> getRemarkListByAid(String activityId) {
        return activityRemarkDao.getRemarkListByAid(activityId);
    }

    public boolean deleteRemark(String id) {
        return activityRemarkDao.deleteById(id) == 1;
    }

    public boolean saveRemark(ActivityRemark ar) {
        return activityRemarkDao.saveRemark(ar) == 1;
    }

    public boolean updateRemark(ActivityRemark ar) {
        return activityRemarkDao.updateRemark(ar) == 1;
    }

    public List<Activity> getActivityListByClueId(String clueId) {
        return activityDao.getActivityListByClueId(clueId);
    }

    public List<Activity> getActivityListByNameAndNotByClueId(Map<String, String> map) {
        return activityDao.getActivityListByNameAndNotByClueId(map);
    }

    public List<Activity> getActivityListByName(String aname) {
        return activityDao.getActivityListByName(aname);
    }
}