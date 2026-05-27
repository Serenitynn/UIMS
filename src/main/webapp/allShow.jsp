<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%! 
  private String maskPassword(String password) {
    return password == null || password.trim().length() == 0 ? "未设置" : "●●●●●●";
  }
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示所有用户</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>所有用户列表</h1>
    </div>
    <%
    Model model=new Model();
    ArrayList<User> arraylist=model.userSelect();
	%>
    <div class="page-shell">
      <div class="panel panel-wide">
        <h2>数据库中的全部用户</h2>
        <p class="panel-subtitle">当前系统内已有的用户信息如下，密码已隐藏显示。</p>
        <% if (arraylist.size() > 0) { %>
        <div class="table-wrapper">
          <table class="data-table">
            <tr><th>ID</th><th>用户名</th><th>密码</th></tr>
            <% for(int i=0;i<arraylist.size();i++){ %>
            <tr>
              <td><%=arraylist.get(i).getId()%></td>
              <td><%=arraylist.get(i).getName() %></td>
              <td><span class="password-mask"><%=maskPassword(arraylist.get(i).getPassword()) %></span></td>
            </tr>
            <% } %>
          </table>
        </div>
        <% } else { %>
        <div class="empty-state">当前数据库中还没有可显示的用户记录。</div>
        <% } %>
        <div class="actions">
          <a href="insert.jsp" class="btn btn-primary">添加用户</a>
          <a href="index.jsp" class="btn btn-secondary">返回主页</a>
        </div>
      </div>
    </div>
  </body>
</html>
