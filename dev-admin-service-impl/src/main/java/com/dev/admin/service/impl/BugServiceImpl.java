package com.dev.admin.service.impl;


import cn.hutool.core.date.DateUtil;
import com.alibaba.dubbo.config.annotation.Service;
import com.dev.admin.entity.Bug;
import com.dev.admin.mapper.BugMapper;
import com.dev.admin.service.BugService;
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
public class BugServiceImpl implements BugService {

    @Autowired
    BugMapper bugMapper;
    @Autowired
    UserCache userCache;

    @Override
   public void addBug(Bug bug){
        bug.setBugName(userCache.get().getName());
        bug.setCreateDate(DateUtil.date());
        bug.setCreateUserId(userCache.get().getId());
       bugMapper.addBug(bug);
   }

    @Override
    public void deleteBug(int id){
        if(id !=0){
            bugMapper.deleteBug(id);
        }
    }

    @Override
    @Transactional
    public void updateBug(Bug bug){
       if(bug!=null){
           deleteBug(bug.getId());
           addBug(bug);
       }
    }

    @Override
    public List<Bug> getBugList(){
        List<Bug> bugList = bugMapper.getBugList();
        return bugList;
    }
}
