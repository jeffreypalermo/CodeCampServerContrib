<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Argotic.Syndication.RssItem[]>"
MasterPageFile="~/Views/Shared/Main.master" %>
<%@ Import Namespace="Argotic.Syndication" %>
<asp:Content ContentPlaceHolderID="Main" runat="server">
<%foreach (RssItem item in Model){%>
    <%Html.RenderPartial("RssItem", item); %>
<%} %>
</asp:Content>