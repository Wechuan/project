package com.dev.admin.mapper;

import com.dev.admin.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DemoMapper {
    List<User> getUserList();
    void SaveUser(User user);
}
