<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户综合管理系统</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>用户综合管理系统（UIMS）</h1>
    </div>
    <div class="page-shell">
      <p class="hero-text">请选择一个功能模块，完成用户信息的添加、修改、删除、查询和展示操作。</p>
      <div class="nav-container">
        <a href="insert.jsp" class="nav-card insert">
          <span class="icon">&#10010;</span>
          添加用户
        </a>
        <a href="update.jsp" class="nav-card update">
          <span class="icon">&#9998;</span>
          修改用户
        </a>
        <a href="dele.jsp" class="nav-card delete">
          <span class="icon">&#128465;</span>
          删除用户
        </a>
        <a href="search.jsp" class="nav-card search">
          <span class="icon">&#128269;</span>
          查询用户
        </a>
        <a href="allShow.jsp" class="nav-card allshow">
          <span class="icon">&#128203;</span>
          显示所有
        </a>
      </div>
      <div class="footer">
        &copy; 2026 用户综合管理系统 | 软件工程实验五<br/>
        成员：苟敏、侯亚琴、宁静、田星宇
      </div>
    </div>
  </body>
</html>
