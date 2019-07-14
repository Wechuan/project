package com.dev.admin.web.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.dubbo.config.annotation.Reference;
import com.dev.admin.entity.User;
import com.dev.admin.entity.UserRole;
import com.dev.admin.service.UserService;
import com.dev.admin.vo.PageVo;
import com.dev.admin.vo.UserVo;
import com.dev.admin.web.Constant.constant;
import com.dev.common.util.PasswordHash;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
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
@RequestMapping("/user")

public class UserController {

    @Reference
    private UserService userService;

    @PostMapping("/addOrUpdateUser")
    public ResponseEntity addOrUpdateUser(UserVo userVo, BindingResult bindingResult){
        if(userVo.getId() == 0){
            userService.addUser(userVo);
        }else{
            System.out.println(userVo.getQqNumber());
            userService.updateUser(userVo);

        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/updatePass")
    public ResponseEntity updatePass(int id,String pass,String newPass){
        User user = userService.getUserById(id);
        Map<String,Object> data = CollectionUtil.newHashMap();
        if(user != null){
            boolean validate = PasswordHash.validatePassword(pass,user.getPassword());
            if(!validate){
                data.put("status",-1);
            }else{
                data.put("status",0);
                user.setPassword(PasswordHash.createHash(newPass));
                userService.updatePass(user);
            }
        }
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/addRole")
    public ResponseEntity addRole(int userId, @RequestParam(value = "roleIds[]") int[] roleIds){
        userService.addRole(userId,roleIds);
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/removeUser")
    public ResponseEntity removeUser(int id){
        userService.removeUser(id);
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @PostMapping("/removeUsers")
    public ResponseEntity removeUser(@RequestParam(value = "ids[]") int[] ids){
        userService.removeUsers(ids);
        return ResponseEntity.ok(constant.SUCCESS_STATE);
    }

    @RequestMapping("/getUserList")
    public ResponseEntity getUserList(UserVo userVo, PageVo pageVo){
        System.err.println("name :" + userVo.getName());
        System.err.println("limit :" + pageVo.getLimit());

        String name = userVo.getName();
        String email = userVo.getEmail();
        String orgname = userVo.getOrgname();

        if(StrUtil.isNotBlank(name)){
            userVo.setName(name + "%");
        }
        if(StrUtil.isNotBlank(email)){
            userVo.setEmail(email + "%");
        }
        if(StrUtil.isNotBlank(orgname)){
            userVo.setOrgname(orgname + "%");
        }

        pageVo = userService.getUserList(userVo,pageVo);
        Map<String,Object> data = CollectionUtil.newHashMap();
        data.put("code",0);
        data.put("list",pageVo.getList());
        data.put("total",pageVo.getTotal());
        return ResponseEntity.ok(data);
    }

    @RequestMapping("/getRoleByUserId")
    public ResponseEntity getRoleByUserId(int userId){
        List<UserRole> userRoleList= userService.getRoleByUserId(userId);
        return ResponseEntity.ok(userRoleList);
    }

    @RequestMapping("/getUserMenus")
    public ResponseEntity getUserMenus(){
        return ResponseEntity.ok(userService.getUserMenus());
    }

   /* public String createUser2(@Valid UserInfo userInfo, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return bindingResult.getFieldError().getDefaultMessage();
        }
        userService.createUser(userInfo.getTel(),userInfo.getPassWord());
        return "OK";
    }
*/

}
