﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Transfer.aspx.cs" Inherits="XueFu.Website.Admin.Transfer" Title="无标题页" %>
<asp:Content ID="MasterContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
        <asp:DropDownList ID="Type" runat="server">
            <asp:ListItem Selected="True" Value="0">转入和转出</asp:ListItem>
            <asp:ListItem Value="1">转入</asp:ListItem>
            <asp:ListItem Value="2">转出</asp:ListItem>
        </asp:DropDownList>		
            <td><%# Eval("InName")%></td>
            <td><%# Eval("Money")%></td>
            <td><%# Convert.ToDateTime(Eval("CreateDate")).ToString("d") %></td>	        
</asp:Content>