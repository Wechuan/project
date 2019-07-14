package com.dev.admin.service;

import com.dev.admin.entity.Bug;
import com.dev.admin.entity.Task;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 9:06
 */
public interface TaskService {

    void addTask(Task task);

    void deleteTask(int id);

    void updateTask(Task task);

    List<Task> getTaskList();
 }
