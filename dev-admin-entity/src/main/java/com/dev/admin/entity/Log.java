package com.dev.admin.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Data
public class Log implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;

	private int menuId;

	private String menuName;

	private String requestPath;

	private String ipAddress;

	private int userId;

	private String userName;

	private long cost;

	private int isError;

	private String error;

	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd hh:mm:ss")
	private Date createDatetime;


}