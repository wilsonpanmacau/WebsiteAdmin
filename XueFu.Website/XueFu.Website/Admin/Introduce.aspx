﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Introduce.aspx.cs" Inherits="XueFu.Website.Admin.Introduce" Title="无标题页" %>
<%@ Import Namespace="XueFu.BLL" %>
<asp:Content ID="MasterContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<div class="position"><img src="/Admin/images/PositionIcon.png"  alt=""/>推荐/报单记录</div>
            <td><%# Eval("Name")%></td>
            <td><%# UserBLL.ReadUser(int.Parse(Eval("OperatorID").ToString())).Name%></td>
            <td><%# Convert.ToDateTime(Eval("CreateDate")).ToString("d") %></td>	        
</asp:Content>