<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改结果</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>修改结果</h1>
    </div>
    <%
    request.setCharacterEncoding("utf-8");
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    String password=request.getParameter("password");
    Model model=new Model();
    int result=model.update(id,name,password);
	%>
    <div class="page-shell">
      <div class="panel">
        <span class="status-badge <%= result > 0 ? "status-success" : "status-warning" %>">
          <%= result > 0 ? "修改成功" : "未找到对应用户" %>
        </span>
        <h2><%= result > 0 ? "用户信息已更新" : "本次没有修改任何数据" %></h2>
        <div class="summary-card">
          <p><strong>用户编号：</strong><%= id %></p>
          <p><strong>新用户名：</strong><%= name %></p>
          <p><strong>影响行数：</strong><%= result %></p>
        </div>
        <div class="actions">
          <a href="allShow.jsp" class="btn btn-primary">显示所有用户</a>
          <a href="update.jsp" class="btn btn-secondary">继续修改</a>
          <a href="index.jsp" class="btn btn-secondary">返回主页</a>
        </div>
      </div>
    </div>
  </body>
</html>
