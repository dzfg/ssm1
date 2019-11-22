package com.zyz.ssm.mapper;

import java.util.List;

import com.zyz.ssm.pojo.User;

/**
 * user对象的dao接口
 */
public interface UserMapper {

	/**
	 * 添加用户
	 * 
	 * @param user
	 */
	void addUser(User user);
	/*
	 * 查询所有用户
	 */
	List<User> selectAllUser();
}
