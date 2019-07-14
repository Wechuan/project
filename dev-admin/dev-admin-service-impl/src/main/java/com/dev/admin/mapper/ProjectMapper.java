package com.dev.admin.mapper;

import com.dev.admin.entity.Project;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProjectMapper {

    int addProject(Project project);

    int updateProject(Project project);

    int deleteProject(int id);

    List<Project> getProjectList();

    List<Project> getMyJoinProjectList(int userId);
}
