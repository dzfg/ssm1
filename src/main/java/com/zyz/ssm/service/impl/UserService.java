package com.zyz.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zyz.ssm.mapper.UserMapper;
import com.zyz.ssm.pojo.User;
import com.zyz.ssm.service.IUserService;

/**
 * user的service接口实现类
 */
@Service
public class UserService implements IUserService {

	@Resource
	private UserMapper userMapper;
	/*
	 * 添加用户
	 */
	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}
	/*
	 * 查询所有用户
	 */
	 @Override
	    public List<User> selectAllUser() {
	        List<User> list = userMapper.selectAllUser();
	        return list;	
	    }


}
