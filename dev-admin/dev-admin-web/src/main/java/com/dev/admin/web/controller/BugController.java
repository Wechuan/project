package com.dev.admin.web.controller;

import cn.hutool.core.collection.CollectionUtil;
import com.alibaba.dubbo.config.annotation.Reference;
import com.dev.admin.entity.Bug;
import com.dev.admin.service.BugService;
import com.dev.admin.vo.BugVo;
import com.dev.admin.web.Constant.constant;
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
@RequestMapping("/bug")
public class BugController {
    @Reference
    BugService bugService;

    @RequestMapping("/addOrUpdateBug")
    public ResponseEntity addBug(BugVo bug){
        if(bug.getId() == 0){
            bugService.addBug(bug);
        }else {
            bugService.updateBug(bug);
        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/deleteBug")
    public ResponseEntity deleteBug(int id){
        if(id!=0){
            bugService.deleteBug(id);
        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/getBugList")
    public ResponseEntity getBugList(){
        List<Bug> list = bugService.getBugList();
        HashMap<String, Object> data = CollectionUtil.newHashMap();
        data.put("code",0);
        data.put("msg","");
        data.put("count",list.size());
        data.put("data",list);
        return ResponseEntity.ok(data);

    }


}
