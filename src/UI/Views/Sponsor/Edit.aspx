﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Main.Master" AutoEventWireup="true"
	Inherits="ViewPage<SponsorInput>" %>

<%@ Import Namespace="CodeCampServer.Core.Common" %>
<%@ Import Namespace="MvcContrib.UI.InputBuilder" %>
<asp:Content ContentPlaceHolderID="Main" runat="server">
	<h2>Edit Sponsor</h2>
	<div class="onpage-form ui-dialog ui-widget ui-corner-all">
		<div class="ui-widget-content ui-corner-bottom">
			<div class="ui-dialog-content">
				<%=Html.InputForm() %>
				<% var manager = ReturnUrlManagerFactory.GetDefault(); %>
				<a class="action-link cancel" href="<%=manager.GetReturnUrl() %>">Cancel</a>
			</div>
		</div>
	</div>
</asp:Content>
