package com.zyz.ssm.service;

import java.util.List;

import com.zyz.ssm.pojo.User;

/**
 * user对象的service接口
 */
public interface IUserService {

	/**
	 * 添加用户
	 * 
	 * @param user
	 */
	void addUser(User user);
	/*
	 * 查询用户
	 */
	List<User> selectAllUser();

}
