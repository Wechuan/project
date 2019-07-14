package com.dev.admin.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Data
public class Project implements Serializable{
    private int id;
    private String name;
    private int createUserId;
    private Date createDate;
    private String bgUrl;


}
