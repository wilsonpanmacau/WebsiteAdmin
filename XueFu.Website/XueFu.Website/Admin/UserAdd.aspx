﻿<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="true" CodeBehind="UserAdd.aspx.cs" Inherits="XueFu.Admin.UserAdd"%>
<%@ Import Namespace="XueFu.BLL" %>
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.12.1/jquery.min.js"></script>
	    <li class="left">会员组：</li>
		<li class="right">
		    <asp:DropDownList Width="156px" ID="GroupID" class="groupid" runat="server" onchange="checkGroup(this.value);">
            </asp:DropDownList>
		<li class="right point"><XueFu:TextBox ID="Point" CssClass="input" runat="server" Width="150px" RequiredFieldType="数据校验" Text="0" onblur="checkPoint(this.value)" />仅对报单员有效</li>
	    <li class="left">姓名：</li>
		<li class="right"><XueFu:TextBox ID="RealName" CssClass="input" runat="server" Width="150px" /></li>
	</ul>	
                    $.ajax({
                        url: "Ajax.aspx?Action=CheckIDCard&IDCard=" + idCard,
                        async: false,
                        success: function(data) {
                            data = JSON.parse(data);
                            if(data.result == "true"){
                        }
                    });