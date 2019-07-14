package com.dev.admin.service;

import com.dev.admin.entity.Project;

import java.util.List;

public interface ProjectService {

    int addProject(Project project);

    int updateProject(Project project);

    int deleteProject(int id);

    List<Project> getProjectList();

    List<Project> getMyJoinProjectList(int userId);

}
