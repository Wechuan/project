package com.dev.admin.web.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.dubbo.config.annotation.Reference;
import com.dev.admin.entity.RoleMenu;
import com.dev.admin.service.RoleService;
import com.dev.admin.vo.PageVo;
import com.dev.admin.vo.RoleVo;
import com.dev.admin.web.Constant.constant;
import com.dev.admin.web.annotation.MenuName;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@RestController
@RequestMapping("/role")
@MenuName("角色管理")
public class RoleController {

    @Reference
    private RoleService roleService;

    @PostMapping("/addOrUpdateRole")
    public ResponseEntity addOrUpdateRole(RoleVo roleVo){
        if(roleVo.getId() == 0){
            roleService.addRole(roleVo);
        }else{
            roleService.updateRole(roleVo);
        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/addMenu")
    public ResponseEntity addMenu(int roleId, @RequestParam(value = "menuIds[]") int[] menuIds){
        roleService.addRoleMenu(roleId,menuIds);
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/removeRole")
    public ResponseEntity removeOrg(int id){
        roleService.removeRole(id);
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/removeRoles")
    public ResponseEntity removeOrg(@RequestParam(value = "ids[]") int[] ids){
        roleService.removeRoles(ids);
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/getRoleList")
    public ResponseEntity getRoleList(RoleVo roleVo, PageVo pageVo){

        String name = roleVo.getName();
        String code = roleVo.getCode();

        if(StrUtil.isNotBlank(name)){
            roleVo.setName(name + "%");
        }
        if(StrUtil.isNotBlank(code)){
            roleVo.setCode(code + "%");
        }

        pageVo = roleService.getRoleList(roleVo,pageVo);
        Map<String,Object> data = CollectionUtil.newHashMap();
        data.put("code",0);
        data.put("list",pageVo.getList());
        data.put("total",pageVo.getTotal());
        return ResponseEntity.ok(data);
    }

    @RequestMapping("/getMenuByRoleId")
    public ResponseEntity getMenuByRoleId(int roleId){
        List<RoleMenu> roleMenuList = roleService.getMenuByRoleId(roleId);
        return ResponseEntity.ok(roleMenuList);
    }

}
