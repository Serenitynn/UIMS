<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加用户</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>添加用户</h1>
    </div>
    <div class="page-shell">
      <div class="panel">
        <h2>录入新用户信息</h2>
        <p class="panel-subtitle">请输入用户编号、用户名和登录密码，提交后系统会写入数据库。</p>
        <form action="insertShow.jsp" method="post" accept-charset="UTF-8">
          <div class="form-grid">
            <div class="field">
              <label for="id">用户编号</label>
              <input id="id" type="number" name="id" placeholder="例如：1001" required>
            </div>
            <div class="field">
              <label for="name">用户名</label>
              <input id="name" type="text" name="name" placeholder="请输入用户名" required>
            </div>
            <div class="field">
              <label for="password">登录密码</label>
              <input id="password" type="password" name="password" placeholder="请输入密码" required>
            </div>
          </div>
          <div class="actions">
            <button type="submit" class="btn btn-primary">提交</button>
            <a href="index.jsp" class="btn btn-secondary">返回主页</a>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
