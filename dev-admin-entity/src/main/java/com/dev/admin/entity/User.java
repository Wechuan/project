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
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;

	private String name;

	private String loginName;

	private String orgname;

	private String password;

	private String phone;

	private String email;

	private int region;

	private String qqNumber;


	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
	private Date createDate;


}