﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bonus.aspx.cs" Inherits="XueFu.Website.Admin.Bonus" Title="无标题页" %>
<asp:Content ID="MasterContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<div class="position"><img src="/Admin/images/PositionIcon.png"  alt=""/>分红记录</div>
        <asp:DropDownList ID="BonusType" runat="server"></asp:DropDownList>
            <td><%# Eval("Money")%></td>
            <td><%# Convert.ToDateTime(Eval("CreateDate")).ToString("d") %></td>	        
</asp:Content>