package com.entity.model;

import com.entity.DaijiaDingdanChatEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 用户咨询
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class DaijiaDingdanChatModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 提问人
     */
    private Integer yonghuId;


    /**
     * 回答人
     */
    private Integer sijiId;


    /**
     * 问题
     */
    private String daijiaDingdanChatIssueText;


    /**
     * 问题时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date issueTime;


    /**
     * 回复
     */
    private String daijiaDingdanChatReplyText;


    /**
     * 回复时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date replyTime;


    /**
     * 状态
     */
    private Integer zhuangtaiTypes;


    /**
     * 数据类型
     */
    private Integer daijiaDingdanChatTypes;


    /**
     * 提问时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：提问人
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：提问人
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：回答人
	 */
    public Integer getSijiId() {
        return sijiId;
    }


    /**
	 * 设置：回答人
	 */
    public void setSijiId(Integer sijiId) {
        this.sijiId = sijiId;
    }
    /**
	 * 获取：问题
	 */
    public String getDaijiaDingdanChatIssueText() {
        return daijiaDingdanChatIssueText;
    }


    /**
	 * 设置：问题
	 */
    public void setDaijiaDingdanChatIssueText(String daijiaDingdanChatIssueText) {
        this.daijiaDingdanChatIssueText = daijiaDingdanChatIssueText;
    }
    /**
	 * 获取：问题时间
	 */
    public Date getIssueTime() {
        return issueTime;
    }


    /**
	 * 设置：问题时间
	 */
    public void setIssueTime(Date issueTime) {
        this.issueTime = issueTime;
    }
    /**
	 * 获取：回复
	 */
    public String getDaijiaDingdanChatReplyText() {
        return daijiaDingdanChatReplyText;
    }


    /**
	 * 设置：回复
	 */
    public void setDaijiaDingdanChatReplyText(String daijiaDingdanChatReplyText) {
        this.daijiaDingdanChatReplyText = daijiaDingdanChatReplyText;
    }
    /**
	 * 获取：回复时间
	 */
    public Date getReplyTime() {
        return replyTime;
    }


    /**
	 * 设置：回复时间
	 */
    public void setReplyTime(Date replyTime) {
        this.replyTime = replyTime;
    }
    /**
	 * 获取：状态
	 */
    public Integer getZhuangtaiTypes() {
        return zhuangtaiTypes;
    }


    /**
	 * 设置：状态
	 */
    public void setZhuangtaiTypes(Integer zhuangtaiTypes) {
        this.zhuangtaiTypes = zhuangtaiTypes;
    }
    /**
	 * 获取：数据类型
	 */
    public Integer getDaijiaDingdanChatTypes() {
        return daijiaDingdanChatTypes;
    }


    /**
	 * 设置：数据类型
	 */
    public void setDaijiaDingdanChatTypes(Integer daijiaDingdanChatTypes) {
        this.daijiaDingdanChatTypes = daijiaDingdanChatTypes;
    }
    /**
	 * 获取：提问时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：提问时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
