package com.dev.admin.mapper;

import com.dev.admin.entity.Bug;
import com.dev.admin.entity.Task;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 9:10
 */
@Mapper
public interface TaskMapper {

    int addTask(Task task);

    int deleteTask(int id);

    int updateTask(Task task);

    List<Task> getTaskList();
}
