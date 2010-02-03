<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Argotic.Syndication.RssItem>" %>
<div>
    <h2><a href="<%=Model.Link %>"><%=Model.Title %></a></h2>
    <p><%=Model.Description %></p>
</div>
