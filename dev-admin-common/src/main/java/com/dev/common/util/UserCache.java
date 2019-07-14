package com.dev.common.util;
import com.alibaba.dubbo.config.annotation.Service;
import com.dev.admin.entity.User;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.jcache.JCacheCacheManager;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

/**
 * 类描述
 * Created by 风象南(yuboon) on 2019/03/03
 */
@Component
public class UserCache {

    private String cacheGroup = "userCache";
    private String cacheName = "currentUser";

    @Autowired
    private RedisTemplate redisTemplate;

    public void put(User user){
        redisTemplate.opsForValue().set(cacheName,user);
    };

    public User get(){
        User user = (User) redisTemplate.opsForValue().get(cacheName);
        return user;
    }
}
