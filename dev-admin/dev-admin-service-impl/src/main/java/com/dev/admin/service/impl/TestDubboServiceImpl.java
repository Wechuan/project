package com.dev.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.dev.admin.service.TestDubboService;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Service
public class TestDubboServiceImpl implements TestDubboService {

    @Override
    public String sayHello(String str) {
        return str + "123";
    }
}
