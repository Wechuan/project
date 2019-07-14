package com.dev.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.dev.admin.entity.User;
import com.dev.admin.mapper.DemoMapper;
import com.dev.admin.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Service
public class DemoServiceImpl implements DemoService {
    @Autowired
    private DemoMapper demoMapper;
    @Override
    public List<User> getUserList() {
        List<User> userList = demoMapper.getUserList();
        return userList;
    }

    @Override
    public void SaveUser(User user) {
        demoMapper.SaveUser(user);

    }
}
