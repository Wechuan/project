package com.dev.admin.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.dev.admin.entity.Menu;
import com.dev.admin.entity.User;
import com.dev.admin.entity.UserRole;
import com.dev.admin.mapper.UserMapper;
import com.dev.admin.service.UserService;
import com.dev.admin.vo.MenuVo;
import com.dev.admin.vo.PageVo;
import com.dev.admin.vo.UserVo;
import com.dev.common.util.PasswordHash;
import com.dev.common.util.UserCache;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@com.alibaba.dubbo.config.annotation.Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserCache userCache;

    @Override
    @Transactional
    public int addUser(User user) {
        user.setCreateDate(DateUtil.date());
        user.setPassword(PasswordHash.createHash(user.getPassword()));
        return userMapper.insert(user);
    }

    @Override
    @Transactional
    public int addRole(int userId, int[] roleIds) {
        userMapper.deleteUserRoleByUserId(userId);
        for (int roleId : roleIds){
            UserRole ur = new UserRole();
            ur.setUserId(userId);
            ur.setRoleId(roleId);
            userMapper.insertUserRole(ur);
        }
        return roleIds.length;
    }

    @Override
    @Transactional
    public int updateUser(User user) {
        if(StrUtil.isNotBlank(user.getPassword())){
            user.setPassword(PasswordHash.createHash(user.getPassword()));
        }
        return userMapper.update(user);
    }

    @Override
    @Transactional
    public int removeUser(int id) {
        return userMapper.delete(id);
    }

    @Override
    @Transactional
    public int removeUsers(int[] ids) {
        return userMapper.deleteBatch(ids);
    }

    @Override
    public PageVo getUserList(UserVo userVo, PageVo pageVo) {
        // 分页
        Page page = PageHelper.startPage(pageVo.getPage(), pageVo.getLimit());
        List<User> userList = userMapper.getUserList(userVo);
        List<UserVo> userVoList = CollectionUtil.newArrayList();
        for(User u : userList){
            UserVo vo = new UserVo();
            BeanUtil.copyProperties(u,vo);
            vo.setPassword("");
            userVoList.add(vo);
        }

        pageVo.setList(userVoList);
        pageVo.setTotal(page.getTotal());

        return pageVo;
    }

    @Override
    public List<UserRole> getRoleByUserId(int userId) {
        List<UserRole> userRoles = userMapper.getRoleByUserId(userId);
        return userRoles;
    }

    @Override
    public User getUserByLogiName(String loginName) {
        return userMapper.getUserByLoginName(loginName);
    }

    @Override
    @Transactional
    public int updatePass(User user) {
        return userMapper.updatePass(user);
    }

    @Override
    public User getUserById(int id) {
        return userMapper.getUserById(id);
    }

    @Override
    public List<MenuVo> getUserMenus() {
        List<Menu> menuList = userMapper.getUserMenus(userCache.get().getId());
        List<MenuVo> menuVoList = CollectionUtil.newArrayList();

        for (Menu menu: menuList) {
            if(-1 == menu.getParentId()){
                MenuVo menuVo = new MenuVo();
                BeanUtil.copyProperties(menu,menuVo);
                menuVoList.add(menuVo);
                recursive(menuVo, menuList);
            }
        }
        return menuVoList;
    }


    private void recursive(MenuVo parent, List<Menu> menuList){
        for (Menu menu: menuList) {
            if(parent.getId() == menu.getParentId()){
                MenuVo menuVo = new MenuVo();
                BeanUtil.copyProperties(menu,menuVo);
                List<MenuVo> children = parent.getChildren();
                if(children == null){
                    children = CollectionUtil.newArrayList();
                    parent.setChildren(children);
                }
                children.add(menuVo);
                recursive(menuVo, menuList);
            }
        }
    }
}
