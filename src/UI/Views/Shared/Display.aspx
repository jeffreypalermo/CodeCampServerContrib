<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Main.Master" AutoEventWireup="true" Inherits="ViewPage<object>"%>
<asp:Content ContentPlaceHolderID="Main" runat="server">
<h3>Display <%=Html.GetLabelForModel() %></h3>
  <%=Html.DisplayForModel()%>
</asp:Content>