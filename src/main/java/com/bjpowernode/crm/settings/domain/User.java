package com.bjpowernode.crm.settings.domain;

/**
 * @author 北京动力节点
 */
public class User {
    /*
        关于字符串中表现的日期及时间
        我们在市场上常用的有两种方式
        日期：年月日
              yyyy-MM-dd 10位字符串
        日期+时间：年月日时分秒 19位字符串
              yyyy-MM-dd HH:mm:ss
     */
    /*
        关于登录
            验证账号和密码
            User user = 执行sql语句select * from tbl_user where loginAct=? and loginPwd=?
            user对象为null，说明账号密码错误
            如果user对象不为null，说明账号密码正确
            需要继续向下验证其他的字段信息
            从user中get到
            expireTime 验证失效时间
            lockState 验证锁定状态
            allowIps 验证浏览器端的ip地址是否有效
     */
    
    private String id;
    private String loginAct;
    private String name;
    private String loginPwd;
    private String email;
    private String expireTime;
    private String lockState;
    private String deptNo;
    private String allowIps;
    private String createTime;
    private String createBy;
    private String editTime;
    private String editBy;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLoginAct() {
        return loginAct;
    }

    public void setLoginAct(String loginAct) {
        this.loginAct = loginAct;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(String expireTime) {
        this.expireTime = expireTime;
    }

    public String getLockState() {
        return lockState;
    }

    public void setLockState(String lockState) {
        this.lockState = lockState;
    }

    public String getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(String deptNo) {
        this.deptNo = deptNo;
    }
    
    public String getAllowIps() {
        return allowIps;
    }

    public void setAllowIps(String allowIps) {
        this.allowIps = allowIps;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getEditTime() {
        return editTime;
    }

    public void setEditTime(String editTime) {
        this.editTime = editTime;
    }

    public String getEditBy() {
        return editBy;
    }

    public void setEditBy(String editBy) {
        this.editBy = editBy;
    }
}