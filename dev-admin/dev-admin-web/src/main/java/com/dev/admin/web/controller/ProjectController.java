package com.dev.admin.web.controller;

import cn.hutool.core.collection.CollectionUtil;
import com.alibaba.dubbo.config.annotation.Reference;
import com.dev.admin.entity.Project;
import com.dev.admin.service.ProjectService;
import com.dev.admin.vo.ProjectVo;
import com.dev.admin.web.Constant.constant;
import com.dev.common.util.UserCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@RestController
@RequestMapping("/project")
public class ProjectController {
    @Reference
    private ProjectService projectService;
    @Autowired
    UserCache userCache;

    @RequestMapping("/addOrUpdateProject")
    public ResponseEntity addOrUpdateProject(ProjectVo project){
        if(project.getId()==0){
            projectService.addProject(project);
        }else{
            projectService.updateProject(project);
        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/deleteProject")
    public ResponseEntity deleteProject(int id){
        int i = projectService.deleteProject(id);
        return ResponseEntity.ok(i);
    }

    @RequestMapping("/getProjectList")
    public ResponseEntity getProjectList(){
        List<Project> list = projectService.getProjectList();

        HashMap<String, Object> data = CollectionUtil.newHashMap();
        data.put("code",0);
        data.put("list",list);
        data.put("total",list.size());
        return ResponseEntity.ok(data);
    }

    @RequestMapping("/getMyJoinProjectList")
    public  ResponseEntity getMyJoinProjectList(){
        List<Project> list = projectService.getMyJoinProjectList(userCache.get().getId());
        HashMap<String, Object> data = CollectionUtil.newHashMap();
        data.put("code",0);
        data.put("list",list);
        data.put("total",list.size());
        return ResponseEntity.ok(data);

    }
}


