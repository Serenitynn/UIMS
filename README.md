# 用户综合管理系统（UIMS）

## 项目简介

本项目是软件工程实验五的成果，基于 Java Web 技术实现的用户综合管理系统，支持用户信息的**增删改查**功能。

## 技术栈

- **前端**：JSP（JavaServer Pages）
- **后端**：Java（Servlet / JSP + JavaBean）
- **数据库**：MySQL
- **数据库驱动**：mysql-connector-java-8.0.11
- **服务器**：Apache Tomcat

## 项目结构

```
UIMS1/
├── .classpath
├── .project
├── .settings/                         # Eclipse Dynamic Web Project 配置
├── src/
│   └── main/
│       ├── java/
│       │   ├── dbutil/Dbconn.java     # 数据库连接工具类
│       │   ├── entity/User.java       # 用户实体类
│       │   └── model/Model.java       # 数据访问层（增删改查逻辑）
│       └── webapp/
│           ├── index.jsp              # 主导航页面（系统入口）
│           ├── insert.jsp             # 添加用户表单页面
│           ├── insertShow.jsp         # 添加用户处理结果页面
│           ├── update.jsp             # 修改用户表单页面
│           ├── updateShow.jsp         # 修改用户处理结果页面
│           ├── dele.jsp               # 删除用户表单页面
│           ├── deleShow.jsp           # 删除用户处理结果页面
│           ├── search.jsp             # 查询单个用户表单页面
│           ├── showUser.jsp           # 查询用户结果展示页面
│           ├── allShow.jsp            # 显示所有用户页面
│           ├── styles.css             # 页面统一样式
│           ├── user.sql               # 数据库初始化脚本
│           └── WEB-INF/lib/           # 运行所需 jar
└── WBS.md
```

## 数据库配置

1. 启动 MySQL 服务
2. 执行 `user.sql` 脚本初始化数据库：
   ```sql
   source /path/to/user.sql
   ```
3. 默认数据库名：`mydatabase`，默认连接账号：`root`，密码：`root`（如需修改请编辑 `src/main/java/dbutil/Dbconn.java`）

## 部署说明

1. 将项目导入 Eclipse / IDEA，配置为 Dynamic Web Project
2. 本项目已去掉对 Eclipse 工作区内固定 Tomcat 名称的绑定；导入后只需在 IDE 中为项目关联你本机现有的 Tomcat 运行时即可
3. MySQL 驱动已放在 `src/main/webapp/WEB-INF/lib/` 目录下，如需更换版本可直接替换对应 jar
4. 配置 Tomcat 服务器并部署项目
5. 访问 `http://localhost:8080/<项目名>/index.jsp` 进入系统

## 功能说明

| 功能 | 入口页面 | 说明 |
|------|---------|------|
| 添加用户 | `src/main/webapp/insert.jsp` | 输入 id、用户名、密码完成新增 |
| 修改用户 | `src/main/webapp/update.jsp` | 根据 id 修改用户名和密码 |
| 删除用户 | `src/main/webapp/dele.jsp` | 根据 id 删除指定用户 |
| 查询用户 | `src/main/webapp/search.jsp` | 根据 id 查询单个用户信息 |
| 显示所有用户 | `src/main/webapp/allShow.jsp` | 显示数据库中所有用户 |

## 任务完成情况

### 任务1：用户综合管理软件开发环境配置
- [x] 创建 Java Web 项目
- [x] 添加 MySQL 驱动支持
- [x] 创建 MySQL 数据库及表（user.sql）
- [x] 导入案例代码（编码统一为 UTF-8）
- [x] 在 Tomcat 服务器中部署项目
- [x] 测试查询、更新、删除、显示等操作

### 任务2：用户综合管理软件功能增量开发
- [x] 开发案例软件主界面（index.jsp），作为功能导航页面
- [x] 上传至 GitHub 仓库

### 任务3：WBS（Work Breakdown Structure）
详见 [WBS.md](WBS.md)

## 作者

仓库维护：Savior-tian  
软件工程实验五 · 2026
