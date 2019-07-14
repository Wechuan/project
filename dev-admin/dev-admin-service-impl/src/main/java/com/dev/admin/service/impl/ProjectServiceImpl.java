package com.dev.admin.service.impl;

import cn.hutool.core.date.DateUtil;
import com.alibaba.dubbo.config.annotation.Service;
import com.dev.admin.entity.Project;
import com.dev.admin.mapper.ProjectMapper;
import com.dev.admin.service.ProjectService;
import com.dev.common.util.UserCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectMapper projectMapper;
    @Autowired
    private UserCache userCache;


    @Override
    @Transactional
    public int addProject(Project project) {
        project.setCreateDate(DateUtil.date());
        project.setCreateUserId(userCache.get().getId());
        return projectMapper.addProject(project);
    }

    @Override
    public int updateProject(Project project) {
        project.setCreateDate(DateUtil.date());
        project.setCreateUserId(userCache.get().getId());
        return projectMapper.updateProject(project);
    }

    @Override
    @Transactional
    public int deleteProject(int id) {
        return projectMapper.deleteProject(id);
    }

    @Override
    public List<Project> getProjectList() {
        List<Project> projectList = projectMapper.getProjectList();
        return projectList;
    }

    @Override
    public List<Project> getMyJoinProjectList(int userId) {
        List<Project> myJoinProjectList = projectMapper.getMyJoinProjectList(userId);
        return myJoinProjectList;
    }
}
