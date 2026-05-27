<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>删除用户</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>删除用户</h1>
    </div>
    <div class="page-shell">
      <div class="panel">
        <h2>根据编号删除用户</h2>
        <p class="panel-subtitle">请输入要删除的用户编号，删除后该记录将从数据库中移除。</p>
        <form action="deleShow.jsp" method="post" accept-charset="UTF-8">
          <div class="form-grid">
            <div class="field">
              <label for="id">用户编号</label>
              <input id="id" type="number" name="id" placeholder="请输入要删除的编号" required>
            </div>
          </div>
          <div class="actions">
            <button type="submit" class="btn btn-danger">确认删除</button>
            <a href="index.jsp" class="btn btn-secondary">返回主页</a>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
