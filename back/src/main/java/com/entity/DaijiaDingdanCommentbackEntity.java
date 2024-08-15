package com.entity;

import com.annotation.ColumnInfo;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;
import java.io.Serializable;
import java.util.*;
import org.apache.tools.ant.util.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.utils.DateUtil;


/**
 * 代驾订单评价
 *
 * @author 
 * @email
 */
@TableName("daijia_dingdan_commentback")
public class DaijiaDingdanCommentbackEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public DaijiaDingdanCommentbackEntity() {

	}

	public DaijiaDingdanCommentbackEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @ColumnInfo(comment="主键",type="int(11)")
    @TableField(value = "id")

    private Integer id;


    /**
     * 代驾订单
     */
    @ColumnInfo(comment="代驾订单",type="int(11)")
    @TableField(value = "daijia_dingdan_id")

    private Integer daijiaDingdanId;


    /**
     * 用户
     */
    @ColumnInfo(comment="用户",type="int(11)")
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 评分
     */
    @ColumnInfo(comment="评分",type="int(11)")
    @TableField(value = "daijia_dingdan_commentback_pingfen_number")

    private Integer daijiaDingdanCommentbackPingfenNumber;


    /**
     * 评价内容
     */
    @ColumnInfo(comment="评价内容",type="longtext")
    @TableField(value = "daijia_dingdan_commentback_text")

    private String daijiaDingdanCommentbackText;


    /**
     * 评价时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @ColumnInfo(comment="评价时间",type="timestamp")
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间  listShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @ColumnInfo(comment="创建时间",type="timestamp")
    @TableField(value = "create_time",fill = FieldFill.INSERT)

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
	 * 获取：代驾订单
	 */
    public Integer getDaijiaDingdanId() {
        return daijiaDingdanId;
    }
    /**
	 * 设置：代驾订单
	 */

    public void setDaijiaDingdanId(Integer daijiaDingdanId) {
        this.daijiaDingdanId = daijiaDingdanId;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }
    /**
	 * 设置：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：评分
	 */
    public Integer getDaijiaDingdanCommentbackPingfenNumber() {
        return daijiaDingdanCommentbackPingfenNumber;
    }
    /**
	 * 设置：评分
	 */

    public void setDaijiaDingdanCommentbackPingfenNumber(Integer daijiaDingdanCommentbackPingfenNumber) {
        this.daijiaDingdanCommentbackPingfenNumber = daijiaDingdanCommentbackPingfenNumber;
    }
    /**
	 * 获取：评价内容
	 */
    public String getDaijiaDingdanCommentbackText() {
        return daijiaDingdanCommentbackText;
    }
    /**
	 * 设置：评价内容
	 */

    public void setDaijiaDingdanCommentbackText(String daijiaDingdanCommentbackText) {
        this.daijiaDingdanCommentbackText = daijiaDingdanCommentbackText;
    }
    /**
	 * 获取：评价时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 设置：评价时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间  listShow
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 设置：创建时间  listShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "DaijiaDingdanCommentback{" +
            ", id=" + id +
            ", daijiaDingdanId=" + daijiaDingdanId +
            ", yonghuId=" + yonghuId +
            ", daijiaDingdanCommentbackPingfenNumber=" + daijiaDingdanCommentbackPingfenNumber +
            ", daijiaDingdanCommentbackText=" + daijiaDingdanCommentbackText +
            ", insertTime=" + DateUtil.convertString(insertTime,"yyyy-MM-dd") +
            ", createTime=" + DateUtil.convertString(createTime,"yyyy-MM-dd") +
        "}";
    }
}
