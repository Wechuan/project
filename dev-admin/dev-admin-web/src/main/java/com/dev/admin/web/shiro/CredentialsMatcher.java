package com.dev.admin.web.shiro;

import com.dev.common.util.PasswordHash;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

/**
 * 自定义密码比较规则
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
public class CredentialsMatcher extends SimpleCredentialsMatcher {

    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
    	UsernamePasswordToken uToken =(UsernamePasswordToken) token;
        //获得用户输入的密码:(可以采用加盐(salt)的方式去检验)
        String inPassword = new String(uToken.getPassword());

        //获得数据库中的密码
        String dbPassword = (String) info.getCredentials();

        System.err.println("inPassword:" + inPassword);
        System.err.println("dbPassword:" + dbPassword);
        //进行密码的比对
        boolean flag = PasswordHash.validatePassword(inPassword,dbPassword);
        return flag;
    }
}
