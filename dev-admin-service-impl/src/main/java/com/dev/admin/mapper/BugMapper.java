package com.dev.admin.mapper;

import com.dev.admin.entity.Bug;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 9:10
 */
@Mapper
public interface BugMapper {

    int addBug(Bug bug);

    int deleteBug(int id);

    int updateBug(Bug bug);

    List<Bug> getBugList();
}
