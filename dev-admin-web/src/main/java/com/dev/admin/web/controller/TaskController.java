package com.dev.admin.web.controller;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.collection.CollectionUtil;
import com.alibaba.dubbo.config.annotation.Reference;
import com.dev.admin.entity.Task;
import com.dev.admin.service.TaskService;
import com.dev.admin.vo.TaskVo;
import com.dev.admin.web.Constant.constant;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 14:33
 */
@RestController
@RequestMapping("/task")
public class TaskController {

    @Reference
    TaskService taskService;

    @RequestMapping("/addOrUpdateTask")
    public ResponseEntity addTask(TaskVo task){
        if(task.getId() == 0){
            taskService.addTask(task);
        }else {
            taskService.updateTask(task);
        }

        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/deleteTask")
    public ResponseEntity deleteTask(int id){
        if(id!=0){
            taskService.deleteTask(id);
        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/getTaskList")
    public ResponseEntity getBugList(){
        List<Task> list = taskService.getTaskList();
        HashMap<String, Object> data = CollectionUtil.newHashMap();
        data.put("code",0);
        data.put("msg","");
        data.put("count",list.size());
        data.put("data",list);
        return ResponseEntity.ok(data);

    }
}
