package com.entity.vo;

import com.entity.QuezhenEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 确诊上报
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("quezhen")
public class QuezhenVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 确诊打卡
     */

    @TableField(value = "quezhen_name")
    private String quezhenName;


    /**
     * 确诊照片
     */

    @TableField(value = "quezhen_file")
    private String quezhenFile;


    /**
     * 备注
     */

    @TableField(value = "quezhen_text")
    private String quezhenText;


    /**
     * 逻辑删除
     */

    @TableField(value = "quezhen_delete")
    private Integer quezhenDelete;


    /**
     * 录入时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间  show3 listShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：确诊打卡
	 */
    public String getQuezhenName() {
        return quezhenName;
    }


    /**
	 * 获取：确诊打卡
	 */

    public void setQuezhenName(String quezhenName) {
        this.quezhenName = quezhenName;
    }
    /**
	 * 设置：确诊照片
	 */
    public String getQuezhenFile() {
        return quezhenFile;
    }


    /**
	 * 获取：确诊照片
	 */

    public void setQuezhenFile(String quezhenFile) {
        this.quezhenFile = quezhenFile;
    }
    /**
	 * 设置：备注
	 */
    public String getQuezhenText() {
        return quezhenText;
    }


    /**
	 * 获取：备注
	 */

    public void setQuezhenText(String quezhenText) {
        this.quezhenText = quezhenText;
    }
    /**
	 * 设置：逻辑删除
	 */
    public Integer getQuezhenDelete() {
        return quezhenDelete;
    }


    /**
	 * 获取：逻辑删除
	 */

    public void setQuezhenDelete(Integer quezhenDelete) {
        this.quezhenDelete = quezhenDelete;
    }
    /**
	 * 设置：录入时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：录入时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间  show3 listShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间  show3 listShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
