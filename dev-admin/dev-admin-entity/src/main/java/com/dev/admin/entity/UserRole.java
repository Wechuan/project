package com.dev.admin.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Data
public class UserRole implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;

	private int userId;

	private int roleId;
}