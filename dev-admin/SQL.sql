/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : lesson-security

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2019-03-03 23:02:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `request_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `is_error` bigint(20) DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('2', null, '测试', null, null, null, null, null, '2019-03-03 12:55:44', '1', '错误了');
INSERT INTO `log` VALUES ('3', null, null, null, '/user/getUserList', null, null, '0', '2019-03-03 13:08:53', '0', null);
INSERT INTO `log` VALUES ('4', null, null, null, '/role/roles.html', null, null, '0', '2019-03-03 13:09:06', '0', null);
INSERT INTO `log` VALUES ('5', null, null, null, '/role/getRoleList', null, null, '0', '2019-03-03 13:09:06', '0', null);
INSERT INTO `log` VALUES ('6', null, null, null, '/role/getRoleList', null, null, '0', '2019-03-03 13:13:59', '0', null);
INSERT INTO `log` VALUES ('7', null, null, null, '/role/getRoleList', null, null, '0', '2019-03-03 13:14:34', '0', null);
INSERT INTO `log` VALUES ('8', null, null, null, '/role/roles.html', null, null, '6', '2019-03-03 13:20:20', '0', null);
INSERT INTO `log` VALUES ('9', null, null, null, '/role/getRoleList', null, null, '16', '2019-03-03 13:20:20', '0', null);
INSERT INTO `log` VALUES ('10', null, null, null, '/menu/menus.html', null, null, '42', '2019-03-03 13:21:07', '0', null);
INSERT INTO `log` VALUES ('11', null, null, null, '/menu/getMenuList', null, null, '24', '2019-03-03 13:21:07', '0', null);
INSERT INTO `log` VALUES ('12', null, null, '192.168.199.182', '/user/users.html', null, null, '13', '2019-03-03 13:23:58', '0', null);
INSERT INTO `log` VALUES ('13', null, null, '192.168.199.182', '/user/getUserList', null, null, '27', '2019-03-03 13:23:58', '0', null);
INSERT INTO `log` VALUES ('14', null, 'MenuController', '192.168.199.182', '/menu/getMenuList', null, null, '350', '2019-03-03 13:26:20', '0', null);
INSERT INTO `log` VALUES ('15', null, 'MenuController', '192.168.199.182', '/menu/getMenuList', null, null, '33', '2019-03-03 13:27:29', '0', null);
INSERT INTO `log` VALUES ('16', null, null, '192.168.199.182', '/menu/form.html', null, null, '68', '2019-03-03 13:27:30', '0', null);
INSERT INTO `log` VALUES ('17', null, 'MenuController', '192.168.199.182', '/menu/addOrUpdateMenu', null, null, '6', '2019-03-03 13:28:10', '1', 'java.lang.NullPointerException\r\n	at MenuServiceImpl.addMenu(MenuServiceImpl.java:37)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:197)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy72.addMenu(Unknown Source)\r\n	at MenuController.addOrUpdateMenu(MenuController.java:30)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:877)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n');
INSERT INTO `log` VALUES ('18', null, 'LoginController', '192.168.199.182', '/login', null, null, '15', '2019-03-03 18:10:07', '0', null);
INSERT INTO `log` VALUES ('19', null, 'LoginController', '192.168.199.182', '/login', null, null, '10', '2019-03-03 18:10:07', '0', null);
INSERT INTO `log` VALUES ('20', null, 'LoginController', '192.168.199.182', '/login', null, null, '65', '2019-03-03 18:22:11', '0', null);
INSERT INTO `log` VALUES ('21', null, 'LoginController', '192.168.199.182', '/login', null, null, '61', '2019-03-03 18:24:04', '0', null);
INSERT INTO `log` VALUES ('22', null, 'LoginController', '192.168.199.182', '/login', null, null, '6', '2019-03-03 18:24:17', '0', null);
INSERT INTO `log` VALUES ('23', null, 'LoginController', '192.168.199.182', '/login', null, null, '64', '2019-03-03 18:31:31', '0', null);
INSERT INTO `log` VALUES ('24', null, 'LoginController', '192.168.199.182', '/login', null, null, '56', '2019-03-03 18:32:46', '0', null);
INSERT INTO `log` VALUES ('25', null, 'LoginController', '192.168.199.182', '/login', null, null, '2', '2019-03-03 18:32:49', '0', null);
INSERT INTO `log` VALUES ('26', null, 'LoginController', '192.168.199.182', '/login', null, null, '4', '2019-03-03 18:40:21', '0', null);
INSERT INTO `log` VALUES ('27', null, 'LoginController', '192.168.199.182', '/login', null, null, '2', '2019-03-03 18:40:25', '0', null);
INSERT INTO `log` VALUES ('28', null, 'LoginController', '192.168.199.182', '/login', null, null, '59', '2019-03-03 18:41:03', '0', null);
INSERT INTO `log` VALUES ('29', null, 'LoginController', '192.168.199.182', '/login', null, null, '5', '2019-03-03 18:41:15', '0', null);
INSERT INTO `log` VALUES ('30', null, 'LoginController', '192.168.199.182', '/login', null, null, '6', '2019-03-03 18:43:50', '0', null);
INSERT INTO `log` VALUES ('31', null, 'LoginController', '192.168.199.182', '/login', null, null, '6', '2019-03-03 18:43:57', '0', null);
INSERT INTO `log` VALUES ('32', null, 'LoginController', '192.168.199.182', '/login', null, null, '7', '2019-03-03 18:44:32', '0', null);
INSERT INTO `log` VALUES ('33', null, 'LoginController', '192.168.199.182', '/login', null, null, '180', '2019-03-03 18:56:43', '0', null);
INSERT INTO `log` VALUES ('34', null, 'LoginController', '192.168.199.182', '/login', null, null, '36', '2019-03-03 18:58:12', '0', null);
INSERT INTO `log` VALUES ('35', null, 'LoginController', '192.168.199.182', '/login', null, null, '4', '2019-03-03 18:58:12', '0', null);
INSERT INTO `log` VALUES ('36', null, 'LoginController', '192.168.199.182', '/login', null, null, '2', '2019-03-03 18:58:17', '0', null);
INSERT INTO `log` VALUES ('37', null, 'LoginController', '192.168.199.182', '/login', null, null, '86', '2019-03-03 18:59:03', '0', null);
INSERT INTO `log` VALUES ('38', null, 'LoginController', '192.168.199.182', '/login', null, null, '2', '2019-03-03 18:59:08', '0', null);
INSERT INTO `log` VALUES ('39', null, 'LoginController', '192.168.199.182', '/login', null, null, '7', '2019-03-03 18:59:18', '0', null);
INSERT INTO `log` VALUES ('40', null, 'LoginController', '192.168.199.182', '/login', null, null, '79', '2019-03-03 19:00:33', '0', null);
INSERT INTO `log` VALUES ('41', null, 'LoginController', '192.168.199.182', '/login', null, null, '3', '2019-03-03 19:00:38', '0', null);
INSERT INTO `log` VALUES ('42', null, 'LoginController', '192.168.199.182', '/login', null, null, '14', '2019-03-03 19:02:00', '0', null);
INSERT INTO `log` VALUES ('43', null, 'LoginController', '192.168.199.182', '/login', null, null, '8', '2019-03-03 19:03:50', '0', null);
INSERT INTO `log` VALUES ('44', null, 'LoginController', '192.168.199.182', '/login', null, null, '68', '2019-03-03 19:08:31', '0', null);
INSERT INTO `log` VALUES ('45', null, null, '192.168.199.182', '/menu/menus.html', null, null, '16', '2019-03-03 19:24:03', '0', null);
INSERT INTO `log` VALUES ('46', null, 'MenuController', '192.168.199.182', '/menu/getMenuList', null, null, '76', '2019-03-03 19:24:03', '0', null);
INSERT INTO `log` VALUES ('47', null, null, '192.168.199.182', '/role/roles.html', null, null, '4', '2019-03-03 19:24:04', '0', null);
INSERT INTO `log` VALUES ('48', null, 'RoleController', '192.168.199.182', '/role/getRoleList', null, null, '89', '2019-03-03 19:24:04', '0', null);
INSERT INTO `log` VALUES ('49', null, null, '192.168.199.182', '/user/users.html', null, null, '7', '2019-03-03 19:24:05', '0', null);
INSERT INTO `log` VALUES ('50', null, 'UserController', '192.168.199.182', '/user/getUserList', null, null, '21', '2019-03-03 19:24:05', '0', null);
INSERT INTO `log` VALUES ('51', null, 'LoginController', '192.168.199.182', '/login', null, null, '73', '2019-03-03 19:26:21', '0', null);
INSERT INTO `log` VALUES ('52', null, 'LoginController', '192.168.199.182', '/login', null, null, '3', '2019-03-03 19:26:43', '0', null);
INSERT INTO `log` VALUES ('53', null, 'LoginController', '192.168.199.182', '/login', null, null, '80', '2019-03-03 19:27:36', '0', null);
INSERT INTO `log` VALUES ('54', null, 'LoginController', '192.168.199.182', '/login', null, null, '18', '2019-03-03 19:27:48', '0', null);
INSERT INTO `log` VALUES ('55', null, 'LoginController', '192.168.199.182', '/login', null, null, '70', '2019-03-03 19:37:58', '0', null);
INSERT INTO `log` VALUES ('56', null, null, '192.168.199.182', '/user/getSession', null, null, '17', '2019-03-03 19:39:02', '0', null);
INSERT INTO `log` VALUES ('57', null, 'LoginController', '192.168.199.182', '/login', null, null, '23', '2019-03-03 19:39:05', '0', null);
INSERT INTO `log` VALUES ('58', null, null, '192.168.199.182', '/user/getSession', null, null, '2', '2019-03-03 19:39:09', '0', null);
INSERT INTO `log` VALUES ('59', null, 'LoginController', '192.168.199.182', '/login', null, null, '71', '2019-03-03 19:40:06', '0', null);
INSERT INTO `log` VALUES ('60', null, 'LoginController', '192.168.199.182', '/login', null, null, '76', '2019-03-03 19:40:46', '0', null);
INSERT INTO `log` VALUES ('61', null, 'LoginController', '192.168.199.182', '/login', null, null, '70', '2019-03-03 19:42:17', '0', null);
INSERT INTO `log` VALUES ('62', null, 'LoginController', '192.168.199.182', '/login', null, null, '68', '2019-03-03 19:43:26', '0', null);
INSERT INTO `log` VALUES ('63', null, 'LoginController', '192.168.199.182', '/login', null, null, '79', '2019-03-03 19:44:07', '0', null);
INSERT INTO `log` VALUES ('64', null, 'LoginController', '192.168.199.182', '/login', null, null, '74', '2019-03-03 19:48:03', '0', null);
INSERT INTO `log` VALUES ('65', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '115', '2019-03-03 19:55:39', '0', null);
INSERT INTO `log` VALUES ('66', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '160', '2019-03-03 19:55:39', '0', null);
INSERT INTO `log` VALUES ('67', '0', null, '192.168.199.182', '/user/users.html', '16', '管理员', '5', '2019-03-03 19:55:49', '0', null);
INSERT INTO `log` VALUES ('68', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '38', '2019-03-03 19:55:49', '0', null);
INSERT INTO `log` VALUES ('69', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '6', '2019-03-03 19:56:29', '0', null);
INSERT INTO `log` VALUES ('70', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '324', '2019-03-03 19:57:53', '0', null);
INSERT INTO `log` VALUES ('71', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '2', '2019-03-03 19:57:58', '0', null);
INSERT INTO `log` VALUES ('72', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 19:57:58', '0', null);
INSERT INTO `log` VALUES ('73', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '14', '2019-03-03 19:58:21', '0', null);
INSERT INTO `log` VALUES ('74', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '312', '2019-03-03 19:59:10', '0', null);
INSERT INTO `log` VALUES ('75', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '99', '2019-03-03 20:00:34', '0', null);
INSERT INTO `log` VALUES ('76', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '118', '2019-03-03 20:00:34', '0', null);
INSERT INTO `log` VALUES ('77', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '311', '2019-03-03 20:11:54', '0', null);
INSERT INTO `log` VALUES ('78', '0', null, '192.168.199.182', '/user/getMenus', '16', '管理员', '2', '2019-03-03 20:11:54', '0', null);
INSERT INTO `log` VALUES ('79', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '151', '2019-03-03 20:12:12', '1', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\r\n### The error may exist in file [E:\\pub_lesson\\lesson-security\\target\\classes\\mapper\\UserMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select distinct m.* from user u, role r, user_role ur, menu m, role_menu rm,         where r.id = ur.user_id         and r.id = ur.role_id         and m.id = rm.menu_id         and r.id = rm.role_id         and u.id = ?         order by m.sequence\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:73)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:446)\r\n	at com.sun.proxy.$Proxy60.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:230)\r\n	at org.apache.ibatis.binding.MapperMethod.executeForMany(MapperMethod.java:137)\r\n	at org.apache.ibatis.binding.MapperMethod.execute(MapperMethod.java:75)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:59)\r\n	at com.sun.proxy.$Proxy61.getUserMenus(Unknown Source)\r\n	at UserServiceImpl.getUserMenus(UserServiceImpl.java:117)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:206)\r\n	at com.sun.proxy.$Proxy96.getUserMenus(Unknown Source)\r\n	at UserController.getUserMenus(UserController.java:90)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\r\n	at com.mysql.jdbc.Util.getInstance(Util.java:408)\r\n	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:944)\r\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3978)\r\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3914)\r\n	at com.mysql.jdbc.MysqlIO.sendCommand(MysqlIO.java:2530)\r\n	at com.mysql.jdbc.MysqlIO.sqlQueryDirect(MysqlIO.java:2683)\r\n	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2495)\r\n	at com.mysql.jdbc.PreparedStatement.executeInternal(PreparedStatement.java:1903)\r\n	at com.mysql.jdbc.PreparedStatement.execute(PreparedStatement.java:1242)\r\n	at com.zaxxer.hikari.pool.ProxyPreparedStatement.execute(ProxyPreparedStatement.java:44)\r\n	at com.zaxxer.hikari.pool.HikariProxyPreparedStatement.execute(HikariProxyPreparedStatement.java)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.logging.jdbc.PreparedStatementLogger.invoke(PreparedStatementLogger.java:59)\r\n	at com.sun.proxy.$Proxy119.execute(Unknown Source)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:63)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at org.apache.ibatis.executor.SimpleExecutor.doQuery(SimpleExecutor.java:63)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:108)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy117.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:433)\r\n	... 83 more\r\n');
INSERT INTO `log` VALUES ('80', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '4', '2019-03-03 20:12:15', '1', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\r\n### The error may exist in file [E:\\pub_lesson\\lesson-security\\target\\classes\\mapper\\UserMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select distinct m.* from user u, role r, user_role ur, menu m, role_menu rm,         where r.id = ur.user_id         and r.id = ur.role_id         and m.id = rm.menu_id         and r.id = rm.role_id         and u.id = ?         order by m.sequence\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:73)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:446)\r\n	at com.sun.proxy.$Proxy60.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:230)\r\n	at org.apache.ibatis.binding.MapperMethod.executeForMany(MapperMethod.java:137)\r\n	at org.apache.ibatis.binding.MapperMethod.execute(MapperMethod.java:75)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:59)\r\n	at com.sun.proxy.$Proxy61.getUserMenus(Unknown Source)\r\n	at UserServiceImpl.getUserMenus(UserServiceImpl.java:117)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:206)\r\n	at com.sun.proxy.$Proxy96.getUserMenus(Unknown Source)\r\n	at UserController.getUserMenus(UserController.java:90)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id = ur.user_id\n        and r.id = ur.role_id\n        and m.id = rm.menu\' at line 2\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\r\n	at com.mysql.jdbc.Util.getInstance(Util.java:408)\r\n	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:944)\r\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3978)\r\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3914)\r\n	at com.mysql.jdbc.MysqlIO.sendCommand(MysqlIO.java:2530)\r\n	at com.mysql.jdbc.MysqlIO.sqlQueryDirect(MysqlIO.java:2683)\r\n	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2495)\r\n	at com.mysql.jdbc.PreparedStatement.executeInternal(PreparedStatement.java:1903)\r\n	at com.mysql.jdbc.PreparedStatement.execute(PreparedStatement.java:1242)\r\n	at com.zaxxer.hikari.pool.ProxyPreparedStatement.execute(ProxyPreparedStatement.java:44)\r\n	at com.zaxxer.hikari.pool.HikariProxyPreparedStatement.execute(HikariProxyPreparedStatement.java)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.logging.jdbc.PreparedStatementLogger.invoke(PreparedStatementLogger.java:59)\r\n	at com.sun.proxy.$Proxy119.execute(Unknown Source)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:63)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at org.apache.ibatis.executor.SimpleExecutor.doQuery(SimpleExecutor.java:63)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:108)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy117.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:433)\r\n	... 83 more\r\n');
INSERT INTO `log` VALUES ('81', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '304', '2019-03-03 20:13:15', '0', null);
INSERT INTO `log` VALUES ('82', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '37', '2019-03-03 20:13:15', '0', null);
INSERT INTO `log` VALUES ('83', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '8', '2019-03-03 20:13:22', '0', null);
INSERT INTO `log` VALUES ('84', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '107', '2019-03-03 20:13:22', '0', null);
INSERT INTO `log` VALUES ('85', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '23', '2019-03-03 20:13:25', '0', null);
INSERT INTO `log` VALUES ('86', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '6', '2019-03-03 20:13:26', '0', null);
INSERT INTO `log` VALUES ('87', '0', null, '192.168.199.182', '/menu/menus.html', '16', '管理员', '3', '2019-03-03 20:13:30', '0', null);
INSERT INTO `log` VALUES ('88', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '11', '2019-03-03 20:13:30', '0', null);
INSERT INTO `log` VALUES ('89', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '139', '2019-03-03 20:13:37', '0', null);
INSERT INTO `log` VALUES ('90', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '16', '2019-03-03 20:13:37', '0', null);
INSERT INTO `log` VALUES ('91', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '57', '2019-03-03 20:13:40', '0', null);
INSERT INTO `log` VALUES ('92', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '10', '2019-03-03 20:13:40', '0', null);
INSERT INTO `log` VALUES ('93', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '82', '2019-03-03 20:13:42', '0', null);
INSERT INTO `log` VALUES ('94', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '6', '2019-03-03 20:13:42', '0', null);
INSERT INTO `log` VALUES ('95', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '76', '2019-03-03 20:13:43', '0', null);
INSERT INTO `log` VALUES ('96', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '6', '2019-03-03 20:13:43', '0', null);
INSERT INTO `log` VALUES ('97', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '58', '2019-03-03 20:13:45', '0', null);
INSERT INTO `log` VALUES ('98', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '5', '2019-03-03 20:13:45', '0', null);
INSERT INTO `log` VALUES ('99', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '70', '2019-03-03 20:13:47', '0', null);
INSERT INTO `log` VALUES ('100', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '6', '2019-03-03 20:13:47', '0', null);
INSERT INTO `log` VALUES ('101', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '75', '2019-03-03 20:13:49', '0', null);
INSERT INTO `log` VALUES ('102', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '8', '2019-03-03 20:13:49', '0', null);
INSERT INTO `log` VALUES ('103', '0', '菜单管理', '192.168.199.182', '/menu/removeMenu', '16', '管理员', '47', '2019-03-03 20:13:50', '0', null);
INSERT INTO `log` VALUES ('104', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '5', '2019-03-03 20:13:50', '0', null);
INSERT INTO `log` VALUES ('105', '0', null, '192.168.199.182', '/menu/form.html', '16', '管理员', '4', '2019-03-03 20:13:52', '0', null);
INSERT INTO `log` VALUES ('106', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '534', '2019-03-03 20:14:06', '0', null);
INSERT INTO `log` VALUES ('107', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '4', '2019-03-03 20:14:06', '0', null);
INSERT INTO `log` VALUES ('108', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '102', '2019-03-03 20:14:19', '0', null);
INSERT INTO `log` VALUES ('109', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '4', '2019-03-03 20:14:19', '0', null);
INSERT INTO `log` VALUES ('110', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '107', '2019-03-03 20:14:31', '0', null);
INSERT INTO `log` VALUES ('111', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '8', '2019-03-03 20:14:31', '0', null);
INSERT INTO `log` VALUES ('112', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '117', '2019-03-03 20:14:59', '0', null);
INSERT INTO `log` VALUES ('113', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '5', '2019-03-03 20:14:59', '0', null);
INSERT INTO `log` VALUES ('114', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '73', '2019-03-03 20:15:04', '0', null);
INSERT INTO `log` VALUES ('115', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '6', '2019-03-03 20:15:04', '0', null);
INSERT INTO `log` VALUES ('116', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '76', '2019-03-03 20:15:15', '0', null);
INSERT INTO `log` VALUES ('117', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '4', '2019-03-03 20:15:15', '0', null);
INSERT INTO `log` VALUES ('118', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '83', '2019-03-03 20:15:32', '0', null);
INSERT INTO `log` VALUES ('119', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '10', '2019-03-03 20:15:32', '0', null);
INSERT INTO `log` VALUES ('120', '0', '菜单管理', '192.168.199.182', '/menu/addOrUpdateMenu', '16', '管理员', '154', '2019-03-03 20:15:47', '0', null);
INSERT INTO `log` VALUES ('121', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '5', '2019-03-03 20:15:47', '0', null);
INSERT INTO `log` VALUES ('122', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 20:16:51', '0', null);
INSERT INTO `log` VALUES ('123', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '14', '2019-03-03 20:16:58', '0', null);
INSERT INTO `log` VALUES ('124', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '11', '2019-03-03 20:16:59', '0', null);
INSERT INTO `log` VALUES ('125', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 20:16:59', '0', null);
INSERT INTO `log` VALUES ('126', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '3', '2019-03-03 20:17:18', '0', null);
INSERT INTO `log` VALUES ('127', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '10', '2019-03-03 20:17:23', '0', null);
INSERT INTO `log` VALUES ('128', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 20:17:24', '0', null);
INSERT INTO `log` VALUES ('129', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '7', '2019-03-03 20:17:24', '0', null);
INSERT INTO `log` VALUES ('130', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '297', '2019-03-03 20:17:34', '0', null);
INSERT INTO `log` VALUES ('131', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '8', '2019-03-03 20:17:36', '0', null);
INSERT INTO `log` VALUES ('132', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 20:17:36', '0', null);
INSERT INTO `log` VALUES ('133', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '879', '2019-03-03 20:17:43', '0', null);
INSERT INTO `log` VALUES ('134', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '20', '2019-03-03 20:17:47', '0', null);
INSERT INTO `log` VALUES ('135', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '6', '2019-03-03 20:17:47', '0', null);
INSERT INTO `log` VALUES ('136', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '338', '2019-03-03 20:18:09', '0', null);
INSERT INTO `log` VALUES ('137', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 20:18:40', '0', null);
INSERT INTO `log` VALUES ('138', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '9', '2019-03-03 20:18:43', '0', null);
INSERT INTO `log` VALUES ('139', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '6', '2019-03-03 20:18:44', '0', null);
INSERT INTO `log` VALUES ('140', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 20:18:46', '0', null);
INSERT INTO `log` VALUES ('141', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 20:18:46', '0', null);
INSERT INTO `log` VALUES ('142', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 20:18:58', '0', null);
INSERT INTO `log` VALUES ('143', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 20:18:59', '0', null);
INSERT INTO `log` VALUES ('144', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 20:19:02', '0', null);
INSERT INTO `log` VALUES ('145', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 20:19:02', '0', null);
INSERT INTO `log` VALUES ('146', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 20:19:07', '0', null);
INSERT INTO `log` VALUES ('147', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '6', '2019-03-03 20:19:10', '0', null);
INSERT INTO `log` VALUES ('148', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '16', '2019-03-03 20:19:11', '0', null);
INSERT INTO `log` VALUES ('149', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '19', '2019-03-03 20:19:11', '0', null);
INSERT INTO `log` VALUES ('150', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '9', '2019-03-03 20:19:12', '0', null);
INSERT INTO `log` VALUES ('151', '0', null, '192.168.199.182', '/user/users.html', '16', '管理员', '2', '2019-03-03 20:19:12', '0', null);
INSERT INTO `log` VALUES ('152', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '15', '2019-03-03 20:19:12', '0', null);
INSERT INTO `log` VALUES ('153', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 20:19:17', '0', null);
INSERT INTO `log` VALUES ('154', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '2', '2019-03-03 20:19:17', '0', null);
INSERT INTO `log` VALUES ('155', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '3', '2019-03-03 20:19:20', '0', null);
INSERT INTO `log` VALUES ('156', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '4', '2019-03-03 20:19:33', '0', null);
INSERT INTO `log` VALUES ('157', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '12', '2019-03-03 20:19:36', '0', null);
INSERT INTO `log` VALUES ('158', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 20:19:37', '0', null);
INSERT INTO `log` VALUES ('159', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 20:19:37', '0', null);
INSERT INTO `log` VALUES ('160', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '350', '2019-03-03 20:20:17', '0', null);
INSERT INTO `log` VALUES ('161', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 20:20:41', '0', null);
INSERT INTO `log` VALUES ('162', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 20:20:41', '0', null);
INSERT INTO `log` VALUES ('163', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '488', '2019-03-03 20:27:21', '0', null);
INSERT INTO `log` VALUES ('164', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '7', '2019-03-03 20:27:23', '0', null);
INSERT INTO `log` VALUES ('165', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '12', '2019-03-03 20:27:26', '0', null);
INSERT INTO `log` VALUES ('166', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '5', '2019-03-03 20:27:27', '0', null);
INSERT INTO `log` VALUES ('167', '0', 'UserController', '192.168.199.182', '/user/getRoleByUserId', '16', '管理员', '4', '2019-03-03 20:27:28', '0', null);
INSERT INTO `log` VALUES ('168', '0', 'UserController', '192.168.199.182', '/user/addRole', '16', '管理员', '62', '2019-03-03 20:27:30', '0', null);
INSERT INTO `log` VALUES ('169', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '4', '2019-03-03 20:27:31', '0', null);
INSERT INTO `log` VALUES ('170', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '4', '2019-03-03 20:27:44', '0', null);
INSERT INTO `log` VALUES ('171', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '294', '2019-03-03 20:29:12', '0', null);
INSERT INTO `log` VALUES ('172', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '69', '2019-03-03 20:29:13', '0', null);
INSERT INTO `log` VALUES ('173', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '119', '2019-03-03 20:31:19', '0', null);
INSERT INTO `log` VALUES ('174', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '21', '2019-03-03 20:31:20', '0', null);
INSERT INTO `log` VALUES ('175', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '6', '2019-03-03 20:31:20', '0', null);
INSERT INTO `log` VALUES ('176', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '298', '2019-03-03 20:33:42', '0', null);
INSERT INTO `log` VALUES ('177', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '70', '2019-03-03 20:33:43', '0', null);
INSERT INTO `log` VALUES ('178', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '114', '2019-03-03 20:33:45', '0', null);
INSERT INTO `log` VALUES ('179', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '20', '2019-03-03 20:33:46', '0', null);
INSERT INTO `log` VALUES ('180', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '9', '2019-03-03 20:33:46', '0', null);
INSERT INTO `log` VALUES ('181', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '338', '2019-03-03 20:34:01', '0', null);
INSERT INTO `log` VALUES ('182', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 20:34:02', '0', null);
INSERT INTO `log` VALUES ('183', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '23', '2019-03-03 20:34:02', '0', null);
INSERT INTO `log` VALUES ('184', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '302', '2019-03-03 20:35:06', '0', null);
INSERT INTO `log` VALUES ('185', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '63', '2019-03-03 20:35:07', '0', null);
INSERT INTO `log` VALUES ('186', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '103', '2019-03-03 20:35:08', '0', null);
INSERT INTO `log` VALUES ('187', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '21', '2019-03-03 20:35:09', '0', null);
INSERT INTO `log` VALUES ('188', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '8', '2019-03-03 20:35:09', '0', null);
INSERT INTO `log` VALUES ('189', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '13', '2019-03-03 20:36:06', '0', null);
INSERT INTO `log` VALUES ('190', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '9', '2019-03-03 20:36:09', '0', null);
INSERT INTO `log` VALUES ('191', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '10', '2019-03-03 20:36:11', '0', null);
INSERT INTO `log` VALUES ('192', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 20:36:11', '0', null);
INSERT INTO `log` VALUES ('193', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '17', '2019-03-03 20:36:14', '0', null);
INSERT INTO `log` VALUES ('194', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 20:36:14', '0', null);
INSERT INTO `log` VALUES ('195', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '15', '2019-03-03 20:36:17', '0', null);
INSERT INTO `log` VALUES ('196', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '8', '2019-03-03 20:36:17', '0', null);
INSERT INTO `log` VALUES ('197', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '11', '2019-03-03 20:36:54', '0', null);
INSERT INTO `log` VALUES ('198', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '9', '2019-03-03 20:36:57', '0', null);
INSERT INTO `log` VALUES ('199', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '14', '2019-03-03 20:36:58', '0', null);
INSERT INTO `log` VALUES ('200', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '7', '2019-03-03 20:36:58', '0', null);
INSERT INTO `log` VALUES ('201', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '8', '2019-03-03 20:37:05', '0', null);
INSERT INTO `log` VALUES ('202', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '8', '2019-03-03 20:37:07', '0', null);
INSERT INTO `log` VALUES ('203', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '11', '2019-03-03 20:37:07', '0', null);
INSERT INTO `log` VALUES ('204', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '11', '2019-03-03 20:37:08', '0', null);
INSERT INTO `log` VALUES ('205', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '6', '2019-03-03 20:37:08', '0', null);
INSERT INTO `log` VALUES ('206', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '13', '2019-03-03 20:40:01', '0', null);
INSERT INTO `log` VALUES ('207', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '8', '2019-03-03 20:40:03', '0', null);
INSERT INTO `log` VALUES ('208', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '7', '2019-03-03 20:40:03', '0', null);
INSERT INTO `log` VALUES ('209', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 20:40:04', '0', null);
INSERT INTO `log` VALUES ('210', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '6', '2019-03-03 20:40:04', '0', null);
INSERT INTO `log` VALUES ('211', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '8', '2019-03-03 20:41:35', '0', null);
INSERT INTO `log` VALUES ('212', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '4', '2019-03-03 20:41:37', '0', null);
INSERT INTO `log` VALUES ('213', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '8', '2019-03-03 20:41:37', '0', null);
INSERT INTO `log` VALUES ('214', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 20:41:39', '0', null);
INSERT INTO `log` VALUES ('215', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 20:41:39', '0', null);
INSERT INTO `log` VALUES ('216', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 20:42:06', '0', null);
INSERT INTO `log` VALUES ('217', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '2', '2019-03-03 20:42:08', '0', null);
INSERT INTO `log` VALUES ('218', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '9', '2019-03-03 20:42:08', '0', null);
INSERT INTO `log` VALUES ('219', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '8', '2019-03-03 20:42:10', '0', null);
INSERT INTO `log` VALUES ('220', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 20:42:11', '0', null);
INSERT INTO `log` VALUES ('221', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '11', '2019-03-03 20:42:23', '0', null);
INSERT INTO `log` VALUES ('222', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '11', '2019-03-03 20:42:25', '0', null);
INSERT INTO `log` VALUES ('223', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '7', '2019-03-03 20:42:25', '0', null);
INSERT INTO `log` VALUES ('224', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '4', '2019-03-03 20:42:26', '0', null);
INSERT INTO `log` VALUES ('225', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 20:42:26', '0', null);
INSERT INTO `log` VALUES ('226', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 20:42:46', '0', null);
INSERT INTO `log` VALUES ('227', '0', null, '192.168.199.182', '/user/users.html', '16', '管理员', '2', '2019-03-03 20:42:48', '0', null);
INSERT INTO `log` VALUES ('228', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '31', '2019-03-03 20:42:48', '0', null);
INSERT INTO `log` VALUES ('229', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '3', '2019-03-03 20:42:48', '0', null);
INSERT INTO `log` VALUES ('230', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '12', '2019-03-03 20:42:48', '0', null);
INSERT INTO `log` VALUES ('231', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 20:42:50', '0', null);
INSERT INTO `log` VALUES ('232', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '7', '2019-03-03 20:42:51', '0', null);
INSERT INTO `log` VALUES ('233', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 21:57:53', '0', null);
INSERT INTO `log` VALUES ('234', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '9', '2019-03-03 21:57:57', '0', null);
INSERT INTO `log` VALUES ('235', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 21:57:57', '0', null);
INSERT INTO `log` VALUES ('236', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '14', '2019-03-03 21:57:57', '0', null);
INSERT INTO `log` VALUES ('237', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '17', '2019-03-03 21:57:57', '0', null);
INSERT INTO `log` VALUES ('238', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 21:58:24', '0', null);
INSERT INTO `log` VALUES ('239', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '8', '2019-03-03 21:58:24', '0', null);
INSERT INTO `log` VALUES ('240', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '16', '2019-03-03 21:58:24', '0', null);
INSERT INTO `log` VALUES ('241', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:04:17', '0', null);
INSERT INTO `log` VALUES ('242', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '7', '2019-03-03 22:04:17', '0', null);
INSERT INTO `log` VALUES ('243', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '9', '2019-03-03 22:04:17', '0', null);
INSERT INTO `log` VALUES ('244', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '1', '2019-03-03 22:04:47', '0', null);
INSERT INTO `log` VALUES ('245', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '7', '2019-03-03 22:04:47', '0', null);
INSERT INTO `log` VALUES ('246', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '4', '2019-03-03 22:04:48', '0', null);
INSERT INTO `log` VALUES ('247', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:04:48', '0', null);
INSERT INTO `log` VALUES ('248', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '8', '2019-03-03 22:04:53', '0', null);
INSERT INTO `log` VALUES ('249', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '8', '2019-03-03 22:04:53', '0', null);
INSERT INTO `log` VALUES ('250', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '8', '2019-03-03 22:04:53', '0', null);
INSERT INTO `log` VALUES ('251', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '11', '2019-03-03 22:07:44', '0', null);
INSERT INTO `log` VALUES ('252', '0', null, '192.168.199.182', '/org/orgs.html', '16', '管理员', '1', '2019-03-03 22:07:44', '0', null);
INSERT INTO `log` VALUES ('253', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '20', '2019-03-03 22:08:03', '0', null);
INSERT INTO `log` VALUES ('254', '0', null, '192.168.199.182', '/org/orgs.html', '16', '管理员', '1', '2019-03-03 22:08:03', '0', null);
INSERT INTO `log` VALUES ('255', '0', null, '192.168.199.182', '/menu/menus.html', '16', '管理员', '4', '2019-03-03 22:08:06', '0', null);
INSERT INTO `log` VALUES ('256', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '8', '2019-03-03 22:08:06', '0', null);
INSERT INTO `log` VALUES ('257', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:08:29', '0', null);
INSERT INTO `log` VALUES ('258', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '6', '2019-03-03 22:08:29', '0', null);
INSERT INTO `log` VALUES ('259', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '11', '2019-03-03 22:08:29', '0', null);
INSERT INTO `log` VALUES ('260', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '11', '2019-03-03 22:08:31', '0', null);
INSERT INTO `log` VALUES ('261', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '10', '2019-03-03 22:08:32', '0', null);
INSERT INTO `log` VALUES ('262', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 22:08:34', '0', null);
INSERT INTO `log` VALUES ('263', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '7', '2019-03-03 22:08:34', '0', null);
INSERT INTO `log` VALUES ('264', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:08:41', '0', null);
INSERT INTO `log` VALUES ('265', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '4', '2019-03-03 22:08:42', '0', null);
INSERT INTO `log` VALUES ('266', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '6', '2019-03-03 22:08:42', '0', null);
INSERT INTO `log` VALUES ('267', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '10', '2019-03-03 22:08:44', '0', null);
INSERT INTO `log` VALUES ('268', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 22:08:44', '0', null);
INSERT INTO `log` VALUES ('269', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:08:45', '0', null);
INSERT INTO `log` VALUES ('270', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '741', '2019-03-03 22:08:48', '0', null);
INSERT INTO `log` VALUES ('271', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:08:50', '0', null);
INSERT INTO `log` VALUES ('272', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '5', '2019-03-03 22:08:50', '0', null);
INSERT INTO `log` VALUES ('273', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '6', '2019-03-03 22:08:50', '0', null);
INSERT INTO `log` VALUES ('274', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 22:09:49', '0', null);
INSERT INTO `log` VALUES ('275', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '6', '2019-03-03 22:09:49', '0', null);
INSERT INTO `log` VALUES ('276', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '5', '2019-03-03 22:09:49', '0', null);
INSERT INTO `log` VALUES ('277', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '10', '2019-03-03 22:09:51', '0', null);
INSERT INTO `log` VALUES ('278', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:09:51', '0', null);
INSERT INTO `log` VALUES ('279', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:09:52', '0', null);
INSERT INTO `log` VALUES ('280', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '491', '2019-03-03 22:09:55', '0', null);
INSERT INTO `log` VALUES ('281', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:09:56', '0', null);
INSERT INTO `log` VALUES ('282', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '4', '2019-03-03 22:09:56', '0', null);
INSERT INTO `log` VALUES ('283', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '6', '2019-03-03 22:09:56', '0', null);
INSERT INTO `log` VALUES ('284', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '5', '2019-03-03 22:09:58', '0', null);
INSERT INTO `log` VALUES ('285', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '8', '2019-03-03 22:09:58', '0', null);
INSERT INTO `log` VALUES ('286', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '6', '2019-03-03 22:09:59', '0', null);
INSERT INTO `log` VALUES ('287', '0', null, '192.168.199.182', '/user/form.html', '16', '管理员', '50', '2019-03-03 22:10:15', '0', null);
INSERT INTO `log` VALUES ('288', '0', 'UserController', '192.168.199.182', '/user/addOrUpdateUser', '16', '管理员', '120', '2019-03-03 22:10:21', '0', null);
INSERT INTO `log` VALUES ('289', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '8', '2019-03-03 22:10:21', '0', null);
INSERT INTO `log` VALUES ('290', '0', null, '192.168.199.182', '/role/form.html', '16', '管理员', '4', '2019-03-03 22:10:26', '0', null);
INSERT INTO `log` VALUES ('291', '0', '角色管理', '192.168.199.182', '/role/addOrUpdateRole', '16', '管理员', '77', '2019-03-03 22:10:31', '0', null);
INSERT INTO `log` VALUES ('292', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '5', '2019-03-03 22:10:31', '0', null);
INSERT INTO `log` VALUES ('293', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '4', '2019-03-03 22:10:32', '0', null);
INSERT INTO `log` VALUES ('294', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:10:33', '0', null);
INSERT INTO `log` VALUES ('295', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:10:36', '0', null);
INSERT INTO `log` VALUES ('296', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '6', '2019-03-03 22:10:36', '0', null);
INSERT INTO `log` VALUES ('297', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '4', '2019-03-03 22:10:38', '0', null);
INSERT INTO `log` VALUES ('298', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:10:38', '0', null);
INSERT INTO `log` VALUES ('299', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:10:42', '0', null);
INSERT INTO `log` VALUES ('300', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:10:42', '0', null);
INSERT INTO `log` VALUES ('301', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:10:44', '0', null);
INSERT INTO `log` VALUES ('302', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '7', '2019-03-03 22:10:44', '0', null);
INSERT INTO `log` VALUES ('303', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '6', '2019-03-03 22:10:44', '0', null);
INSERT INTO `log` VALUES ('304', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '6', '2019-03-03 22:10:46', '0', null);
INSERT INTO `log` VALUES ('305', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:10:47', '0', null);
INSERT INTO `log` VALUES ('306', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '2', '2019-03-03 22:10:47', '0', null);
INSERT INTO `log` VALUES ('307', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:10:49', '0', null);
INSERT INTO `log` VALUES ('308', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '2', '2019-03-03 22:10:49', '0', null);
INSERT INTO `log` VALUES ('309', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:10:51', '0', null);
INSERT INTO `log` VALUES ('310', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:10:51', '0', null);
INSERT INTO `log` VALUES ('311', '0', '角色管理', '192.168.199.182', '/role/addMenu', '16', '管理员', '190', '2019-03-03 22:11:01', '0', null);
INSERT INTO `log` VALUES ('312', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:11:03', '0', null);
INSERT INTO `log` VALUES ('313', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:11:03', '0', null);
INSERT INTO `log` VALUES ('314', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '5', '2019-03-03 22:11:06', '0', null);
INSERT INTO `log` VALUES ('315', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:11:08', '0', null);
INSERT INTO `log` VALUES ('316', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:11:08', '0', null);
INSERT INTO `log` VALUES ('317', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '3', '2019-03-03 22:11:12', '0', null);
INSERT INTO `log` VALUES ('318', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:11:12', '0', null);
INSERT INTO `log` VALUES ('319', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:11:21', '0', null);
INSERT INTO `log` VALUES ('320', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '3', '2019-03-03 22:11:24', '0', null);
INSERT INTO `log` VALUES ('321', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '9', '2019-03-03 22:12:07', '0', null);
INSERT INTO `log` VALUES ('322', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:12:12', '0', null);
INSERT INTO `log` VALUES ('323', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '5', '2019-03-03 22:12:13', '0', null);
INSERT INTO `log` VALUES ('324', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:12:17', '0', null);
INSERT INTO `log` VALUES ('325', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:12:44', '0', null);
INSERT INTO `log` VALUES ('326', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:12:49', '0', null);
INSERT INTO `log` VALUES ('327', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '6', '2019-03-03 22:12:56', '0', null);
INSERT INTO `log` VALUES ('328', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '6', '2019-03-03 22:13:45', '0', null);
INSERT INTO `log` VALUES ('329', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:15:08', '0', null);
INSERT INTO `log` VALUES ('330', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '6', '2019-03-03 22:15:30', '0', null);
INSERT INTO `log` VALUES ('331', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '8', '2019-03-03 22:15:34', '0', null);
INSERT INTO `log` VALUES ('332', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '9', '2019-03-03 22:16:49', '0', null);
INSERT INTO `log` VALUES ('333', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '3', '2019-03-03 22:16:49', '0', null);
INSERT INTO `log` VALUES ('334', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:16:51', '0', null);
INSERT INTO `log` VALUES ('335', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:16:51', '0', null);
INSERT INTO `log` VALUES ('336', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:16:59', '0', null);
INSERT INTO `log` VALUES ('337', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '1', '2019-03-03 22:16:59', '0', null);
INSERT INTO `log` VALUES ('338', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '5', '2019-03-03 22:19:00', '0', null);
INSERT INTO `log` VALUES ('339', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '6', '2019-03-03 22:19:00', '0', null);
INSERT INTO `log` VALUES ('340', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '5', '2019-03-03 22:20:16', '0', null);
INSERT INTO `log` VALUES ('341', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:20:16', '0', null);
INSERT INTO `log` VALUES ('342', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '14', '2019-03-03 22:20:19', '0', null);
INSERT INTO `log` VALUES ('343', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:20:20', '0', null);
INSERT INTO `log` VALUES ('344', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:20:40', '0', null);
INSERT INTO `log` VALUES ('345', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:20:48', '0', null);
INSERT INTO `log` VALUES ('346', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '1', '2019-03-03 22:20:50', '0', null);
INSERT INTO `log` VALUES ('347', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:20:50', '0', null);
INSERT INTO `log` VALUES ('348', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:20:51', '0', null);
INSERT INTO `log` VALUES ('349', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '8', '2019-03-03 22:22:09', '0', null);
INSERT INTO `log` VALUES ('350', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '3', '2019-03-03 22:22:10', '0', null);
INSERT INTO `log` VALUES ('351', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '10', '2019-03-03 22:22:12', '0', null);
INSERT INTO `log` VALUES ('352', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:22:13', '0', null);
INSERT INTO `log` VALUES ('353', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '3', '2019-03-03 22:22:13', '0', null);
INSERT INTO `log` VALUES ('354', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '6', '2019-03-03 22:22:13', '0', null);
INSERT INTO `log` VALUES ('355', '0', null, '192.168.199.182', '/menu/menus.html', '16', '管理员', '3', '2019-03-03 22:22:18', '0', null);
INSERT INTO `log` VALUES ('356', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '3', '2019-03-03 22:22:18', '0', null);
INSERT INTO `log` VALUES ('357', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '8', '2019-03-03 22:22:18', '0', null);
INSERT INTO `log` VALUES ('358', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '6', '2019-03-03 22:22:18', '0', null);
INSERT INTO `log` VALUES ('359', '0', null, '192.168.199.182', '/user/users.html', '16', '管理员', '9', '2019-03-03 22:22:19', '0', null);
INSERT INTO `log` VALUES ('360', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '4', '2019-03-03 22:22:19', '0', null);
INSERT INTO `log` VALUES ('361', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 22:22:22', '0', null);
INSERT INTO `log` VALUES ('362', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:22:22', '0', null);
INSERT INTO `log` VALUES ('363', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:22:30', '0', null);
INSERT INTO `log` VALUES ('364', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:22:30', '0', null);
INSERT INTO `log` VALUES ('365', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:22:35', '0', null);
INSERT INTO `log` VALUES ('366', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '4', '2019-03-03 22:22:35', '0', null);
INSERT INTO `log` VALUES ('367', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '7', '2019-03-03 22:22:35', '0', null);
INSERT INTO `log` VALUES ('368', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '7', '2019-03-03 22:22:36', '0', null);
INSERT INTO `log` VALUES ('369', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:22:37', '0', null);
INSERT INTO `log` VALUES ('370', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 22:22:37', '0', null);
INSERT INTO `log` VALUES ('371', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '1', '2019-03-03 22:22:41', '0', null);
INSERT INTO `log` VALUES ('372', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '3', '2019-03-03 22:22:41', '0', null);
INSERT INTO `log` VALUES ('373', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:22:41', '0', null);
INSERT INTO `log` VALUES ('374', '0', '登陆', '192.168.199.182', '/doLogin', '1', '123', '6', '2019-03-03 22:22:44', '0', null);
INSERT INTO `log` VALUES ('375', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '1', '123', '4', '2019-03-03 22:22:44', '0', null);
INSERT INTO `log` VALUES ('376', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '1', '123', '5', '2019-03-03 22:22:44', '0', null);
INSERT INTO `log` VALUES ('377', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '1', '123', '6', '2019-03-03 22:22:44', '0', null);
INSERT INTO `log` VALUES ('378', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '1', '123', '11', '2019-03-03 22:22:48', '0', null);
INSERT INTO `log` VALUES ('379', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '1', '123', '3', '2019-03-03 22:22:49', '0', null);
INSERT INTO `log` VALUES ('380', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '1', '123', '2', '2019-03-03 22:22:49', '0', null);
INSERT INTO `log` VALUES ('381', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '1', '123', '7', '2019-03-03 22:22:53', '0', null);
INSERT INTO `log` VALUES ('382', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '1', '123', '2', '2019-03-03 22:22:53', '0', null);
INSERT INTO `log` VALUES ('383', '0', 'UserController', '192.168.199.182', '/user/getUserList', '1', '123', '5', '2019-03-03 22:22:56', '0', null);
INSERT INTO `log` VALUES ('384', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '1', '123', '3', '2019-03-03 22:22:57', '0', null);
INSERT INTO `log` VALUES ('385', '0', 'UserController', '192.168.199.182', '/user/getRoleByUserId', '1', '123', '5', '2019-03-03 22:22:58', '0', null);
INSERT INTO `log` VALUES ('386', '0', 'UserController', '192.168.199.182', '/user/addRole', '1', '123', '69', '2019-03-03 22:23:01', '0', null);
INSERT INTO `log` VALUES ('387', '0', '登陆', '192.168.199.182', '/doLogout', '1', '123', '4', '2019-03-03 22:23:06', '0', null);
INSERT INTO `log` VALUES ('388', '0', '登陆', '192.168.199.182', '/login', '1', '123', '2', '2019-03-03 22:23:06', '0', null);
INSERT INTO `log` VALUES ('389', '0', '登陆', '192.168.199.182', '/login', '1', '123', '3', '2019-03-03 22:23:06', '0', null);
INSERT INTO `log` VALUES ('390', '0', '登陆', '192.168.199.182', '/login', '1', '123', '3', '2019-03-03 22:23:08', '0', null);
INSERT INTO `log` VALUES ('391', '0', '登陆', '192.168.199.182', '/login', '1', '123', '1', '2019-03-03 22:23:08', '0', null);
INSERT INTO `log` VALUES ('392', '0', '登陆', '192.168.199.182', '/doLogin', '1', '123', '10', '2019-03-03 22:23:11', '0', null);
INSERT INTO `log` VALUES ('393', '0', '登陆', '192.168.199.182', '/login', '1', '123', '2', '2019-03-03 22:23:11', '0', null);
INSERT INTO `log` VALUES ('394', '0', '登陆', '192.168.199.182', '/doLogin', '1', '123', '6', '2019-03-03 22:23:16', '0', null);
INSERT INTO `log` VALUES ('395', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '1', '123', '4', '2019-03-03 22:23:16', '0', null);
INSERT INTO `log` VALUES ('396', '0', 'UserController', '192.168.199.182', '/user/getUserList', '1', '123', '5', '2019-03-03 22:23:17', '0', null);
INSERT INTO `log` VALUES ('397', '0', '登陆', '192.168.199.182', '/doLogout', '1', '123', '2', '2019-03-03 22:23:26', '0', null);
INSERT INTO `log` VALUES ('398', '0', '登陆', '192.168.199.182', '/login', '1', '123', '2', '2019-03-03 22:23:26', '0', null);
INSERT INTO `log` VALUES ('399', '0', '登陆', '192.168.199.182', '/login', '1', '123', '1', '2019-03-03 22:23:27', '0', null);
INSERT INTO `log` VALUES ('400', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '10', '2019-03-03 22:23:29', '0', null);
INSERT INTO `log` VALUES ('401', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '3', '2019-03-03 22:23:30', '0', null);
INSERT INTO `log` VALUES ('402', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '3', '2019-03-03 22:23:30', '0', null);
INSERT INTO `log` VALUES ('403', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '8', '2019-03-03 22:23:30', '0', null);
INSERT INTO `log` VALUES ('404', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '5', '2019-03-03 22:23:33', '0', null);
INSERT INTO `log` VALUES ('405', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '2', '2019-03-03 22:23:34', '0', null);
INSERT INTO `log` VALUES ('406', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '2', '2019-03-03 22:23:34', '0', null);
INSERT INTO `log` VALUES ('407', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '1', '2019-03-03 22:23:43', '0', null);
INSERT INTO `log` VALUES ('408', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:23:43', '0', null);
INSERT INTO `log` VALUES ('409', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:23:43', '0', null);
INSERT INTO `log` VALUES ('410', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '11', '2019-03-03 22:23:46', '0', null);
INSERT INTO `log` VALUES ('411', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '4', '2019-03-03 22:23:47', '0', null);
INSERT INTO `log` VALUES ('412', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '5', '2019-03-03 22:23:47', '0', null);
INSERT INTO `log` VALUES ('413', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '7', '2019-03-03 22:23:47', '0', null);
INSERT INTO `log` VALUES ('414', '0', null, '192.168.199.182', '/user/users.html', '16', '管理员', '4', '2019-03-03 22:23:48', '0', null);
INSERT INTO `log` VALUES ('415', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '6', '2019-03-03 22:23:48', '0', null);
INSERT INTO `log` VALUES ('416', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '2', '2019-03-03 22:23:49', '0', null);
INSERT INTO `log` VALUES ('417', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '4', '2019-03-03 22:23:49', '0', null);
INSERT INTO `log` VALUES ('418', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '2', '2019-03-03 22:23:50', '0', null);
INSERT INTO `log` VALUES ('419', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '2', '2019-03-03 22:23:51', '0', null);
INSERT INTO `log` VALUES ('420', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:23:52', '0', null);
INSERT INTO `log` VALUES ('421', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:23:52', '0', null);
INSERT INTO `log` VALUES ('422', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '4', '2019-03-03 22:23:57', '0', null);
INSERT INTO `log` VALUES ('423', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:23:57', '0', null);
INSERT INTO `log` VALUES ('424', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '293', '2019-03-03 22:25:03', '0', null);
INSERT INTO `log` VALUES ('425', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '82', '2019-03-03 22:25:03', '0', null);
INSERT INTO `log` VALUES ('426', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '33', '2019-03-03 22:25:03', '0', null);
INSERT INTO `log` VALUES ('427', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '118', '2019-03-03 22:25:03', '0', null);
INSERT INTO `log` VALUES ('428', '0', null, '192.168.199.182', '/menu/menus.html', '16', '管理员', '6', '2019-03-03 22:25:06', '0', null);
INSERT INTO `log` VALUES ('429', '0', '菜单管理', '192.168.199.182', '/menu/getMenuList', '16', '管理员', '11', '2019-03-03 22:25:06', '0', null);
INSERT INTO `log` VALUES ('430', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '16', '2019-03-03 22:25:06', '0', null);
INSERT INTO `log` VALUES ('431', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '11', '2019-03-03 22:25:08', '0', null);
INSERT INTO `log` VALUES ('432', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '11', '2019-03-03 22:25:08', '0', null);
INSERT INTO `log` VALUES ('433', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '14', '2019-03-03 22:25:24', '0', null);
INSERT INTO `log` VALUES ('434', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:25:25', '0', null);
INSERT INTO `log` VALUES ('435', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '15', '2019-03-03 22:25:27', '0', null);
INSERT INTO `log` VALUES ('436', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:25:27', '0', null);
INSERT INTO `log` VALUES ('437', '0', null, '192.168.199.182', '/role/form.html', '16', '管理员', '4', '2019-03-03 22:25:29', '0', null);
INSERT INTO `log` VALUES ('438', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:25:32', '0', null);
INSERT INTO `log` VALUES ('439', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '8', '2019-03-03 22:25:32', '0', null);
INSERT INTO `log` VALUES ('440', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '26', '2019-03-03 22:25:36', '0', null);
INSERT INTO `log` VALUES ('441', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '12', '2019-03-03 22:25:37', '0', null);
INSERT INTO `log` VALUES ('442', '0', 'UserController', '192.168.199.182', '/user/getRoleByUserId', '16', '管理员', '6', '2019-03-03 22:25:38', '0', null);
INSERT INTO `log` VALUES ('443', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 22:25:41', '0', null);
INSERT INTO `log` VALUES ('444', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '7', '2019-03-03 22:25:41', '0', null);
INSERT INTO `log` VALUES ('445', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '292', '2019-03-03 22:28:05', '0', null);
INSERT INTO `log` VALUES ('446', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '75', '2019-03-03 22:28:06', '0', null);
INSERT INTO `log` VALUES ('447', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '68', '2019-03-03 22:28:06', '0', null);
INSERT INTO `log` VALUES ('448', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '135', '2019-03-03 22:28:06', '0', null);
INSERT INTO `log` VALUES ('449', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '19', '2019-03-03 22:28:07', '0', null);
INSERT INTO `log` VALUES ('450', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '30', '2019-03-03 22:28:08', '0', null);
INSERT INTO `log` VALUES ('451', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '14', '2019-03-03 22:28:09', '0', null);
INSERT INTO `log` VALUES ('452', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 22:28:11', '0', null);
INSERT INTO `log` VALUES ('453', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '11', '2019-03-03 22:28:11', '0', null);
INSERT INTO `log` VALUES ('454', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '9', '2019-03-03 22:34:10', '0', null);
INSERT INTO `log` VALUES ('455', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '11', '2019-03-03 22:34:10', '0', null);
INSERT INTO `log` VALUES ('456', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '15', '2019-03-03 22:34:10', '0', null);
INSERT INTO `log` VALUES ('457', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '9', '2019-03-03 22:34:10', '0', null);
INSERT INTO `log` VALUES ('458', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '7', '2019-03-03 22:34:10', '0', null);
INSERT INTO `log` VALUES ('459', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '9', '2019-03-03 22:34:11', '0', null);
INSERT INTO `log` VALUES ('460', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 22:34:25', '0', null);
INSERT INTO `log` VALUES ('461', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '23', '2019-03-03 22:34:25', '0', null);
INSERT INTO `log` VALUES ('462', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '12', '2019-03-03 22:34:25', '0', null);
INSERT INTO `log` VALUES ('463', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '9', '2019-03-03 22:34:26', '0', null);
INSERT INTO `log` VALUES ('464', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '12', '2019-03-03 22:34:27', '0', null);
INSERT INTO `log` VALUES ('465', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '9', '2019-03-03 22:34:29', '0', null);
INSERT INTO `log` VALUES ('466', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '10', '2019-03-03 22:34:31', '0', null);
INSERT INTO `log` VALUES ('467', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '8', '2019-03-03 22:34:37', '0', null);
INSERT INTO `log` VALUES ('468', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '8', '2019-03-03 22:34:37', '0', null);
INSERT INTO `log` VALUES ('469', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '9', '2019-03-03 22:34:37', '0', null);
INSERT INTO `log` VALUES ('470', '0', 'UserController', '192.168.199.182', '/user/getUserList', '16', '管理员', '18', '2019-03-03 22:34:38', '0', null);
INSERT INTO `log` VALUES ('471', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '6', '2019-03-03 22:34:39', '0', null);
INSERT INTO `log` VALUES ('472', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 22:34:40', '0', null);
INSERT INTO `log` VALUES ('473', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:34:51', '0', null);
INSERT INTO `log` VALUES ('474', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '7', '2019-03-03 22:34:51', '0', null);
INSERT INTO `log` VALUES ('475', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '10', '2019-03-03 22:34:51', '0', null);
INSERT INTO `log` VALUES ('476', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '3', '2019-03-03 22:34:51', '0', null);
INSERT INTO `log` VALUES ('477', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '5', '2019-03-03 22:34:51', '0', null);
INSERT INTO `log` VALUES ('478', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 22:34:53', '0', null);
INSERT INTO `log` VALUES ('479', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:34:53', '0', null);
INSERT INTO `log` VALUES ('480', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:34:55', '0', null);
INSERT INTO `log` VALUES ('481', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:34:55', '0', null);
INSERT INTO `log` VALUES ('482', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '289', '2019-03-03 22:35:17', '0', null);
INSERT INTO `log` VALUES ('483', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '92', '2019-03-03 22:35:18', '0', null);
INSERT INTO `log` VALUES ('484', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '41', '2019-03-03 22:35:18', '0', null);
INSERT INTO `log` VALUES ('485', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '134', '2019-03-03 22:35:18', '0', null);
INSERT INTO `log` VALUES ('486', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '3', '2019-03-03 22:35:20', '0', null);
INSERT INTO `log` VALUES ('487', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '24', '2019-03-03 22:35:20', '0', null);
INSERT INTO `log` VALUES ('488', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '17', '2019-03-03 22:35:21', '0', null);
INSERT INTO `log` VALUES ('489', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '8', '2019-03-03 22:35:21', '0', null);
INSERT INTO `log` VALUES ('490', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 22:35:25', '0', null);
INSERT INTO `log` VALUES ('491', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 22:35:25', '0', null);
INSERT INTO `log` VALUES ('492', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '21', '2019-03-03 22:35:30', '0', null);
INSERT INTO `log` VALUES ('493', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 22:35:31', '0', null);
INSERT INTO `log` VALUES ('494', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '6', '2019-03-03 22:35:32', '0', null);
INSERT INTO `log` VALUES ('495', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '15', '2019-03-03 22:35:32', '0', null);
INSERT INTO `log` VALUES ('496', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '10', '2019-03-03 22:35:32', '0', null);
INSERT INTO `log` VALUES ('497', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '3', '2019-03-03 22:35:34', '0', null);
INSERT INTO `log` VALUES ('498', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '6', '2019-03-03 22:35:34', '0', null);
INSERT INTO `log` VALUES ('499', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '11', '2019-03-03 22:35:35', '0', null);
INSERT INTO `log` VALUES ('500', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:35:35', '0', null);
INSERT INTO `log` VALUES ('501', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '6', '2019-03-03 22:35:36', '0', null);
INSERT INTO `log` VALUES ('502', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 22:35:37', '0', null);
INSERT INTO `log` VALUES ('503', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '4', '2019-03-03 22:35:53', '0', null);
INSERT INTO `log` VALUES ('504', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:35:53', '0', null);
INSERT INTO `log` VALUES ('505', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '7', '2019-03-03 22:35:56', '0', null);
INSERT INTO `log` VALUES ('506', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 22:35:57', '0', null);
INSERT INTO `log` VALUES ('507', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '9', '2019-03-03 22:35:57', '0', null);
INSERT INTO `log` VALUES ('508', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '33', '2019-03-03 22:35:57', '0', null);
INSERT INTO `log` VALUES ('509', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '1', '2019-03-03 22:35:58', '0', null);
INSERT INTO `log` VALUES ('510', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '6', '2019-03-03 22:35:58', '0', null);
INSERT INTO `log` VALUES ('511', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '7', '2019-03-03 22:35:59', '0', null);
INSERT INTO `log` VALUES ('512', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:35:59', '0', null);
INSERT INTO `log` VALUES ('513', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:36:01', '0', null);
INSERT INTO `log` VALUES ('514', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:36:02', '0', null);
INSERT INTO `log` VALUES ('515', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '8', '2019-03-03 22:36:06', '0', null);
INSERT INTO `log` VALUES ('516', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:36:06', '0', null);
INSERT INTO `log` VALUES ('517', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '14', '2019-03-03 22:36:08', '0', null);
INSERT INTO `log` VALUES ('518', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '5', '2019-03-03 22:36:08', '0', null);
INSERT INTO `log` VALUES ('519', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '13', '2019-03-03 22:36:10', '0', null);
INSERT INTO `log` VALUES ('520', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:36:10', '0', null);
INSERT INTO `log` VALUES ('521', '0', null, '192.168.199.182', '/role/form.html', '16', '管理员', '3', '2019-03-03 22:36:12', '0', null);
INSERT INTO `log` VALUES ('522', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '10', '2019-03-03 22:37:06', '0', null);
INSERT INTO `log` VALUES ('523', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:37:06', '0', null);
INSERT INTO `log` VALUES ('524', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:37:10', '0', null);
INSERT INTO `log` VALUES ('525', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '7', '2019-03-03 22:37:10', '0', null);
INSERT INTO `log` VALUES ('526', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '10', '2019-03-03 22:37:10', '0', null);
INSERT INTO `log` VALUES ('527', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '1', '2019-03-03 22:37:38', '0', null);
INSERT INTO `log` VALUES ('528', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '5', '2019-03-03 22:37:38', '0', null);
INSERT INTO `log` VALUES ('529', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '13', '2019-03-03 22:37:39', '0', null);
INSERT INTO `log` VALUES ('530', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:37:39', '0', null);
INSERT INTO `log` VALUES ('531', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '14', '2019-03-03 22:37:41', '0', null);
INSERT INTO `log` VALUES ('532', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '3', '2019-03-03 22:37:41', '0', null);
INSERT INTO `log` VALUES ('533', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '4', '2019-03-03 22:37:48', '0', null);
INSERT INTO `log` VALUES ('534', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '3', '2019-03-03 22:37:48', '0', null);
INSERT INTO `log` VALUES ('535', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '2', '2019-03-03 22:37:49', '0', null);
INSERT INTO `log` VALUES ('536', '0', '登陆', '192.168.199.182', '/doLogin', '1', '123', '11', '2019-03-03 22:37:52', '0', null);
INSERT INTO `log` VALUES ('537', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '1', '123', '5', '2019-03-03 22:37:52', '0', null);
INSERT INTO `log` VALUES ('538', '0', null, '192.168.199.182', '/user/users.html', '1', '123', '2', '2019-03-03 22:37:52', '0', null);
INSERT INTO `log` VALUES ('539', '0', 'UserController', '192.168.199.182', '/user/getUserList', '1', '123', '23', '2019-03-03 22:37:52', '0', null);
INSERT INTO `log` VALUES ('540', '0', '登陆', '192.168.199.182', '/doLogout', '1', '123', '3', '2019-03-03 22:37:57', '0', null);
INSERT INTO `log` VALUES ('541', '0', '登陆', '192.168.199.182', '/login', '1', '123', '3', '2019-03-03 22:37:58', '0', null);
INSERT INTO `log` VALUES ('542', '0', '登陆', '192.168.199.182', '/login', '1', '123', '3', '2019-03-03 22:37:58', '0', null);
INSERT INTO `log` VALUES ('543', '0', '登陆', '192.168.199.182', '/doLogin', '1', '123', '15', '2019-03-03 22:38:00', '0', null);
INSERT INTO `log` VALUES ('544', '0', '登陆', '192.168.199.182', '/login', '1', '123', '2', '2019-03-03 22:38:00', '0', null);
INSERT INTO `log` VALUES ('545', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '10', '2019-03-03 22:38:03', '0', null);
INSERT INTO `log` VALUES ('546', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '5', '2019-03-03 22:38:03', '0', null);
INSERT INTO `log` VALUES ('547', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '5', '2019-03-03 22:38:03', '0', null);
INSERT INTO `log` VALUES ('548', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '11', '2019-03-03 22:38:03', '0', null);
INSERT INTO `log` VALUES ('549', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '3', '2019-03-03 22:38:04', '0', null);
INSERT INTO `log` VALUES ('550', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '8', '2019-03-03 22:38:04', '0', null);
INSERT INTO `log` VALUES ('551', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '3', '2019-03-03 22:38:05', '0', null);
INSERT INTO `log` VALUES ('552', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '2', '2019-03-03 22:38:05', '0', null);
INSERT INTO `log` VALUES ('553', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '5', '2019-03-03 22:38:07', '0', null);
INSERT INTO `log` VALUES ('554', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '4', '2019-03-03 22:38:07', '0', null);
INSERT INTO `log` VALUES ('555', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '307', '2019-03-03 22:55:03', '0', null);
INSERT INTO `log` VALUES ('556', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '74', '2019-03-03 22:55:04', '0', null);
INSERT INTO `log` VALUES ('557', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '23', '2019-03-03 22:55:04', '0', null);
INSERT INTO `log` VALUES ('558', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '73', '2019-03-03 22:55:04', '0', null);
INSERT INTO `log` VALUES ('559', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '18', '2019-03-03 22:55:10', '0', null);
INSERT INTO `log` VALUES ('560', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '2', '2019-03-03 22:55:12', '0', null);
INSERT INTO `log` VALUES ('561', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '1', '2019-03-03 22:55:12', '0', null);
INSERT INTO `log` VALUES ('562', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '2', '2019-03-03 22:55:12', '0', null);
INSERT INTO `log` VALUES ('563', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '2', '2019-03-03 22:55:20', '0', null);
INSERT INTO `log` VALUES ('564', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '21', '2019-03-03 22:59:38', '0', null);
INSERT INTO `log` VALUES ('565', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '10', '2019-03-03 22:59:38', '0', null);
INSERT INTO `log` VALUES ('566', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '17', '2019-03-03 22:59:38', '0', null);
INSERT INTO `log` VALUES ('567', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '1', '2019-03-03 22:59:51', '0', null);
INSERT INTO `log` VALUES ('568', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '8', '2019-03-03 23:00:29', '0', null);
INSERT INTO `log` VALUES ('569', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '27', '2019-03-03 23:00:29', '0', null);
INSERT INTO `log` VALUES ('570', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '12', '2019-03-03 23:00:29', '0', null);
INSERT INTO `log` VALUES ('571', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 23:00:45', '0', null);
INSERT INTO `log` VALUES ('572', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '11', '2019-03-03 23:00:45', '0', null);
INSERT INTO `log` VALUES ('573', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '8', '2019-03-03 23:00:45', '0', null);
INSERT INTO `log` VALUES ('574', '0', 'UserController', '192.168.199.182', '/user/updatePass', '16', '管理员', '158', '2019-03-03 23:00:53', '0', null);
INSERT INTO `log` VALUES ('575', '0', '登陆', '192.168.199.182', '/doLogout', '16', '管理员', '3', '2019-03-03 23:01:21', '0', null);
INSERT INTO `log` VALUES ('576', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '5', '2019-03-03 23:01:21', '0', null);
INSERT INTO `log` VALUES ('577', '0', '登陆', '192.168.199.182', '/login', '16', '管理员', '3', '2019-03-03 23:01:21', '0', null);
INSERT INTO `log` VALUES ('578', '0', '登陆', '192.168.199.182', '/doLogin', '16', '管理员', '10', '2019-03-03 23:01:24', '0', null);
INSERT INTO `log` VALUES ('579', '0', 'UserController', '192.168.199.182', '/user/getUserMenus', '16', '管理员', '7', '2019-03-03 23:01:24', '0', null);
INSERT INTO `log` VALUES ('580', '0', '机构管理', '192.168.199.182', '/org/getOrgListTree', '16', '管理员', '8', '2019-03-03 23:01:24', '0', null);
INSERT INTO `log` VALUES ('581', '0', '机构管理', '192.168.199.182', '/org/getOrgList', '16', '管理员', '8', '2019-03-03 23:01:24', '0', null);
INSERT INTO `log` VALUES ('582', '0', null, '192.168.199.182', '/role/roles.html', '16', '管理员', '3', '2019-03-03 23:01:32', '0', null);
INSERT INTO `log` VALUES ('583', '0', '角色管理', '192.168.199.182', '/role/getRoleList', '16', '管理员', '20', '2019-03-03 23:01:32', '0', null);
INSERT INTO `log` VALUES ('584', '0', '菜单管理', '192.168.199.182', '/menu/getMenuListTree', '16', '管理员', '8', '2019-03-03 23:01:34', '0', null);
INSERT INTO `log` VALUES ('585', '0', '角色管理', '192.168.199.182', '/role/getMenuByRoleId', '16', '管理员', '7', '2019-03-03 23:01:34', '0', null);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('13', '20', '机构管理', 'org', 'organization/organizations.html', '1', '2019-03-03');
INSERT INTO `menu` VALUES ('14', '20', '菜单管理', 'menu', 'menu/menus.html', '2', '2019-03-03');
INSERT INTO `menu` VALUES ('15', '20', '角色管理', 'role', 'role/roles.html', '3', '2019-03-03');
INSERT INTO `menu` VALUES ('16', '20', '用户管理', 'user', 'user/users.html', '4', '2019-03-03');
INSERT INTO `menu` VALUES ('17', '20', '日志管理', 'log', 'log/logs.html', '5', '2019-03-03');
INSERT INTO `menu` VALUES ('18', '-1', '测试模块', 'test', '1', '7', '2019-03-03');
INSERT INTO `menu` VALUES ('19', '18', '测试模块11', 'test11', '1', '8', '2019-03-03');
INSERT INTO `menu` VALUES ('20', '-1', '系统设置', null, '1', '1', '2019-03-03');

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sequence` int(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '0', '1', '1', '1', '2019-03-01');
INSERT INTO `organization` VALUES ('2', '1', '3', '3', '3', '2019-03-01');
INSERT INTO `organization` VALUES ('5', '2', '5', '5', '59', '2019-03-01');
INSERT INTO `organization` VALUES ('6', '5', '7', '7', '7', '2019-03-01');
INSERT INTO `organization` VALUES ('7', '5', '9', '9', '9', '2019-03-01');
INSERT INTO `organization` VALUES ('8', '5', '11', '111', '111', '2019-03-01');
INSERT INTO `organization` VALUES ('9', '1', '8', '8', '8', '2019-03-01');
INSERT INTO `organization` VALUES ('11', '1', '9', '9', '9', '2019-03-01');
INSERT INTO `organization` VALUES ('12', '1', '12', '12', '12', '2019-03-01');
INSERT INTO `organization` VALUES ('17', '0', '5', '5', '5', '2019-03-01');
INSERT INTO `organization` VALUES ('18', '1', '90', '90', '90', '2019-03-01');
INSERT INTO `organization` VALUES ('19', '1', '42', '42', '42', '2019-03-01');
INSERT INTO `organization` VALUES ('20', '0', '19', '19', '19', '2019-03-01');
INSERT INTO `organization` VALUES ('21', '0', '88', '88', '88', '2019-03-01');
INSERT INTO `organization` VALUES ('22', '0', '22', '22', '22', '2019-03-01');
INSERT INTO `organization` VALUES ('23', '1', '001', '001', '11', '2019-03-01');
INSERT INTO `organization` VALUES ('24', '1', '43', '23', '23', '2019-03-01');
INSERT INTO `organization` VALUES ('25', '0', '7778', '77', '7779', '2019-03-01');
INSERT INTO `organization` VALUES ('26', '0', '200', '200', '200', '2019-03-01');
INSERT INTO `organization` VALUES ('27', '1', '99999', '99999', '99999', '2019-03-01');
INSERT INTO `organization` VALUES ('28', '0', '888', '888', '88', '2019-03-01');
INSERT INTO `organization` VALUES ('29', '20', '23', '123', '123', '2019-03-02');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('2', '管理员', 'admin', '2019-03-02');
INSERT INTO `role` VALUES ('3', '测试角色', '1', '2019-03-02');
INSERT INTO `role` VALUES ('4', '23', '23', '2019-03-02');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('6', '1', '12');
INSERT INTO `role_menu` VALUES ('45', '2', '20');
INSERT INTO `role_menu` VALUES ('46', '2', '13');
INSERT INTO `role_menu` VALUES ('47', '2', '14');
INSERT INTO `role_menu` VALUES ('48', '2', '15');
INSERT INTO `role_menu` VALUES ('49', '2', '16');
INSERT INTO `role_menu` VALUES ('50', '2', '17');
INSERT INTO `role_menu` VALUES ('51', '2', '18');
INSERT INTO `role_menu` VALUES ('52', '2', '19');
INSERT INTO `role_menu` VALUES ('53', '3', '20');
INSERT INTO `role_menu` VALUES ('54', '3', '16');
INSERT INTO `role_menu` VALUES ('55', '3', '17');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `region` tinyint(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', 'test', '10:1cef39a83b4bf50559e4c44b284da791e16626f07e876971:1ef4701ef51c924d3d1bcd017074a8537cca2045fcc496c2', '123', '12313', '0', null);
INSERT INTO `user` VALUES ('2', '666', '666', '666', '66', '66', '4', '2019-02-24');
INSERT INTO `user` VALUES ('3', '1', '1', null, '1', '1', '4', '2019-02-24');
INSERT INTO `user` VALUES ('4', '23123', '12312', '10:f5ab9cf1f0e38f04b7e5a729cc5bfea8f5e083a74b3c6835:cbd2cdd6da88cbb5e8325bf1181587465d19729e4f2605bc', '123', '123123', '4', '2019-02-24');
INSERT INTO `user` VALUES ('5', '中文', '12312', '10:0e84042f8eea4065a9093abf54baee08cba1d2b4562574b9:9161e76b106ec3114bc585c6ab097a58da411d0c17eb87aa', '123', '123123', '4', '2019-02-24');
INSERT INTO `user` VALUES ('6', '678', '87', '10:22a462c7484bef084bb1da72bbcd6bd9ee86616a4103720d:edddbbc852e24cb6ee0333fcd128736eddf7848025aad41d', '678678', '678', '4', '2019-02-24');
INSERT INTO `user` VALUES ('7', '8678', '7667', '10:83cc190867ab3bbdc4d2e4bbd73b875b9283f58dd3252d3d:ac795c8c132de2b0ae652ee23eadde3e1a71af61d076cf12', '6786', '78678', '4', '2019-02-24');
INSERT INTO `user` VALUES ('8', 'rwer', 'werwer', '10:e6f06719a5b4c0f8df9f0ba0cc0bdd2793acbcdb7fa545f8:e975228ce99179fcc22a84ec754a54c597bfbd695819d389', 'werw', 'erwer', '4', '2019-02-24');
INSERT INTO `user` VALUES ('9', 'u', 'ui', '10:59c8948b245ba05d6ca5d7364032d053542e02861e5586f7:e3d67a72a7b987a0d5a47aaa4e574657b6c38e350c7f7419', 'uiui', 'iu', '4', '2019-02-24');
INSERT INTO `user` VALUES ('10', '88', '888', '10:6b44f458e663f3ddeb85b1296e255fa0cb98bf19f296931f:4f0430128067ddd75669395c39dbc8ed5b79a3231c5972fc', '8', '8', '4', '2019-02-24');
INSERT INTO `user` VALUES ('11', '0', '00', '10:06ceef659c187c277b172af2a36f9e66046401d9dcf43e7a:15060674b27c75d21e5ec5408affce5f40f55d92492f3520', '0', '0', '4', '2019-02-24');
INSERT INTO `user` VALUES ('12', '9789', '9', '10:25c461764a576054f14e3ff1edfc48d9ceec934cb06d6470:4e04c2b927d9ce5eaf807690a4efee3833e5915908962c47', '789', '789', '4', '2019-02-24');
INSERT INTO `user` VALUES ('13', 'ert', 'rt', '10:eff9d32d8e6ee2ba721f8902651b8682b358788c66e76ae2:6a107a708b0910dfb43269fbb6c9bbe140011023bc344b3d', 'erte', 'rtert', '4', '2019-02-24');
INSERT INTO `user` VALUES ('14', 'werw', 'wer', '10:9a4caeeb62189732a87df282920ddb4f37dfa4f443a21919:398d8a8fdc6389ddb18a96146c880bf69b9a7d060598c641', 'wer', 'wer', '4', '2019-02-24');
INSERT INTO `user` VALUES ('15', 'sdfsd', 'sf', '10:3f48fbac16e8c2ba082b7b199fc4d9dd7780f7c96f9fb483:d105838621bd1058064268447f0d1ec6c40021af31168ac9', 'fsdf', 'sdfsf', '4', '2019-02-24');
INSERT INTO `user` VALUES ('16', '管理员', 'admin', '10:4a750a1a04b3dff3e9cdbd599d85ec06f364caad2e076774:e20f9ba9b1eee53b3e0f10b0f28c57d36b640bea272cf01e', '1', '1', '2', '2019-02-24');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('26', '16', '2');
INSERT INTO `user_role` VALUES ('27', '1', '3');
