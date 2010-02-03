﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewUserControl" %>
    <ul class="menu"> 
        <asp:LoginView ID="LoginView1" runat="server">
	        <LoggedInTemplate>
		        <li><a href="<%=Url.Action<AdminController>(c=>c.Index(null)) %>"><b>admin</b></a></li>
	        </LoggedInTemplate>
        </asp:LoginView>
        <%if (ViewData.Contains<UserGroup>())
          { %>
        <li><a href="<%=Url.Action<HomeController>(c=>c.Index(null)) %>"><b>upcoming events</b></a></li>
        <li><a href="<%=Url.Action<HomeController>(c=>c.Events(null)) %>"><b>all events</b></a></li>        
        <li><a href="<%=Url.Action<HomeController>(c=>c.About(null)) %>"><b>about us</b></a></li>
        <%} %>
    </ul> 


