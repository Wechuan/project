package com.dev.admin.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 14:33
 */
@Data
public class Task implements Serializable {
    private int id;

    private String taskName;

    private String content;

    private int createUserId;

    private Date createDate;

    private String handler;
}
