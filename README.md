#项目管理开发平台

## 项目简介
项目管理平台研发，项目管理系统是项目的管理者应用专门管理项目的系统软件，在有限的资源约束下，运用系统的观点、方法和理论，对项目涉及的全部工作进行有效地管理。它从项目的投资决策开始到项目结束的全过程进行计划、组织、指挥、协调、控制和评价，以实现项目的目标。

## 技术选型

```
* 核心框架：Sring boot + Spring Framework + Dubbo
* 协调服务：Zookeeper
* 安全框架：Apache Shiro
* 持久层框架：MyBatis
* 数据库连接池：Alibaba Druid
* 缓存框架：Redis
* 会话管理：Spring-Session
* 日志管理：SLF4J
* 前段框架 :Bootstrap+Jquery

```

## 主要功能
* projectManagement是Java语言的分布式系统架构。使用Spring整合开源框架。
* 使用Maven对项目进行模块化管理，提高项目的易开发性，拓展性。
* 系统包括4个子系统：系统管理Service、系统管理Web、业务Service、业务Web。
* 可以无限的扩张子系统，子系统之间使用Dubbo进行通信。


### 使用说明

项目依赖Redis、Zookeeper服务。


