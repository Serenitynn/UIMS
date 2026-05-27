<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改用户</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>修改用户</h1>
    </div>
    <div class="page-shell">
      <div class="panel">
        <h2>根据编号修改用户信息</h2>
        <p class="panel-subtitle">输入已有用户的编号，并填写新的用户名和密码。</p>
        <form action="updateShow.jsp" method="post" accept-charset="UTF-8">
          <div class="form-grid">
            <div class="field">
              <label for="id">用户编号</label>
              <input id="id" type="number" name="id" placeholder="请输入要修改的编号" required>
            </div>
            <div class="field">
              <label for="name">新用户名</label>
              <input id="name" type="text" name="name" placeholder="请输入新的用户名" required>
            </div>
            <div class="field">
              <label for="password">新密码</label>
              <input id="password" type="password" name="password" placeholder="请输入新的密码" required>
            </div>
          </div>
          <div class="actions">
            <button type="submit" class="btn btn-primary">提交修改</button>
            <a href="index.jsp" class="btn btn-secondary">返回主页</a>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
