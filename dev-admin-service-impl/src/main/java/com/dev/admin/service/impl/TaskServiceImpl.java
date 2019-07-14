package com.dev.admin.service.impl;


import cn.hutool.core.date.DateUtil;
import com.alibaba.dubbo.config.annotation.Service;
import com.dev.admin.entity.Bug;
import com.dev.admin.entity.Task;
import com.dev.admin.mapper.BugMapper;
import com.dev.admin.mapper.TaskMapper;
import com.dev.admin.service.BugService;
import com.dev.admin.service.TaskService;
import com.dev.common.util.UserCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 9:11
 */
@Service
public class TaskServiceImpl implements TaskService {

    @Autowired
    TaskMapper taskMapper;
    @Autowired
    UserCache userCache;

    @Override
    public void addTask(Task task){
        task.setTaskName(userCache.get().getName());
        task.setCreateDate(DateUtil.date());
        task.setCreateUserId(userCache.get().getId());
       taskMapper.addTask(task);
    }

    @Override
    public void deleteTask(int id){
        if(id !=0){
            taskMapper.deleteTask(id);
        }
    }

    @Override
    @Transactional
    public void updateTask(Task task){
       if(task!=null){
           deleteTask(task.getId());
           addTask(task);
       }
    }

    @Override
    public List<Task> getTaskList(){
        List<Task> taskList = taskMapper.getTaskList();
        return taskList;
    }
}
