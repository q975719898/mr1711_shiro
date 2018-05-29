package com.mr.service.Impl;

import com.mr.mapper.UserMapper;
import com.mr.model.User;
import com.mr.model.UserExample;
import com.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by czl on 2018/5/25.
 */
@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public User getUserByUserName(String username) {

        UserExample example= new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
         criteria.andUsernameEqualTo(username);
        List<User> users = userMapper.selectByExample(example);
        return users.size()==0?null:users.get(0);
    }

    //通过用户id查询角色
    public List<String> selectPermissionByUserId(Integer id) {
        return userMapper.selectPermissionByUserId(id);
    }

    //通过用户id查询权限
    public List<String> selectRolesByUserId(Integer id) {
        return userMapper.selectRolesByUserId(id);
    }

}
