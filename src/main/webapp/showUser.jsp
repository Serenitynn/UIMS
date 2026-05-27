<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%! 
  private String maskPassword(String password) {
    return password == null || password.trim().length() == 0 ? "未设置" : "●●●●●●";
  }
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询用户结果</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
    <div class="header">
      <h1>查询结果</h1>
    </div>
    <%
    int id=Integer.parseInt(request.getParameter("id"));
    Model model=new Model();
    User user=model.load(id);
	%>
    <div class="page-shell">
      <div class="panel panel-wide">
        <h2>用户查询完成</h2>
        <p class="panel-subtitle">以下是与编号对应的用户信息。</p>
        <% if (user != null) { %>
        <div class="table-wrapper">
          <table class="data-table">
            <tr><th>ID</th><th>用户名</th><th>密码</th></tr>
            <tr>
              <td><%=user.getId() %></td>
              <td><%=user.getName() %></td>
              <td><span class="password-mask"><%=maskPassword(user.getPassword()) %></span></td>
            </tr>
          </table>
        </div>
        <% } else { %>
        <div class="empty-state">未查询到编号为 <strong><%= id %></strong> 的用户。</div>
        <% } %>
        <div class="actions">
          <a href="search.jsp" class="btn btn-primary">继续查询</a>
          <a href="index.jsp" class="btn btn-secondary">返回主页</a>
        </div>
      </div>
    </div>
  </body>
</html>
