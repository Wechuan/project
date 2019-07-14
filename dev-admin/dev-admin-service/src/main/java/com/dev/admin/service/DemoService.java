package com.dev.admin.service;

import com.dev.admin.entity.User;

import java.util.List;

public interface DemoService {
    public List<User> getUserList();
    public void SaveUser(User user);
}
