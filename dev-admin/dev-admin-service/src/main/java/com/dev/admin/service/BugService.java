package com.dev.admin.service;

import com.dev.admin.entity.Bug;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/7/11/011
 * 9:06
 */
public interface BugService {

    void addBug(Bug bug);

    void deleteBug(int id);

    void updateBug(Bug bug);

    List<Bug> getBugList();
 }
