﻿<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="true" CodeBehind="UserAdd.aspx.cs" Inherits="XueFu.Admin.UserAdd"%>
<%@ Import Namespace="XueFu.BLL" %><%@ Import Namespace="XueFu.EntLib" %><asp:Content ID="MasterContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.12.1/jquery.min.js"></script><div class="position"><img src="/Admin/images/PositionIcon.png"  alt=""/>用户<%=GetAddUpdate()%></div><div class="add">	<ul>		<li class="left">用户名：</li>		<li class="right"><XueFu:TextBox ID="UserName" CssClass="input" runat="server" Width="150px" CanBeNull="必填" RequiredFieldType="自定义验证表达式" ValidationExpression="^[a-zA-Z0-9_.@]{5,16}$" onblur="checkUserName(this.value)"/></li>			</ul>	<ul>
	    <li class="left">会员组：</li>
		<li class="right">
		    <asp:DropDownList Width="156px" ID="GroupID" class="groupid" runat="server" onchange="checkGroup(this.value);">
            </asp:DropDownList>        </li>        <li class="left point">赠送积分：</li>
		<li class="right point"><XueFu:TextBox ID="Point" CssClass="input" runat="server" Width="150px" RequiredFieldType="数据校验" Text="0" onblur="checkPoint(this.value)" />仅对报单员有效</li>	</ul>	<asp:PlaceHolder ID="Add" runat="server">	<ul>		<li class="left">密码：</li>		<li class="right"><XueFu:TextBox ID="UserPassword" CssClass="input" runat="server" Width="150px" CanBeNull="必填" RequiredFieldType="自定义验证表达式" ValidationExpression="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,16}" TextMode="Password"/></li>		<li class="left">重复密码：</li>		<li class="right">		    <XueFu:TextBox CssClass="input" Width="150px" ID="UserPassword2" runat="server" CanBeNull="必填" RequiredFieldType="自定义验证表达式" ValidationExpression="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,16}" TextMode="Password"/>            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一致" ControlToCompare="UserPassword" ControlToValidate="UserPassword2" Display="Dynamic"></asp:CompareValidator>        </li>	</ul>	</asp:PlaceHolder>	<ul>
	    <li class="left">姓名：</li>
		<li class="right"><XueFu:TextBox ID="RealName" CssClass="input" runat="server" Width="150px" /></li>		<li class="left">性别：</li>		<li class="right"><asp:RadioButtonList ID="Sex" runat="server" RepeatDirection="Horizontal"><asp:ListItem Value="1" Selected="True">男</asp:ListItem><asp:ListItem Value="2">女</asp:ListItem></asp:RadioButtonList></li>
	</ul>		<ul>		<li class="left">身份证号码：</li>		<li class="right"><XueFu:TextBox ID="IDCard" CssClass="input" runat="server" Width="150px" RequiredFieldType="身份证号码" /></li>	</ul>	<ul>		<li class="left">移动电话：</li>		<li class="right"><XueFu:TextBox ID="Mobile" CssClass="input" runat="server" Width="150px" RequiredFieldType="移动手机" /></li>		<li class="left">微信号：</li>		<li class="right"><XueFu:TextBox ID="WeChat" CssClass="input" runat="server" Width="150px" /></li>	</ul>		<ul>		<li class="left">状态：</li>		<li class="right"><asp:RadioButtonList ID="State" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></li>	</ul></div><div class="action">    <asp:Button CssClass="button" ID="SubmitButton" Text=" 确 定 " runat="server"  OnClick="SubmitButton_Click" OnClientClick="return checkForm();" /></div><script language="javascript" type="text/javascript">    var isCheckUserName = false;    var isCheckPoint = true;    function checkPoint(point){        if(point !="" && o("ctl00_ContentPlaceHolder_GroupID").value == "<%=(int)GroupType.Report %>")        var sysTotalScore = <%=Config.ReadConfigInfo().TotalScore %>;        if(sysTotalScore < parseInt(point)){            alertMessage("<%=Language.ReadLanguage("TotalScoreLessTips") %>");            isCheckPoint = false;        }    }    function checkUserName(userName){        isCheckUserName=false;        if(userName!=""){            var reg = /^[a-zA-Z0-9_.@]{5,16}$/;            if(reg.test(userName)){                Ajax.requestURL("Ajax.aspx?Action=CheckUserName&UserName="+encodeURI(userName),dealCheckUserName);            }            else{                return false;            }        }    }    function dealCheckUserName(data){        if(data=="ok"){            isCheckUserName=true;        }        else{            alertMessage("<%=Language.ReadLanguage("UserNameExistTips") %>");        }    }    function checkForm(){        if(Page_ClientValidate()){            if(getQueryString("ID")==""){                if(!isCheckUserName){                    alertMessage("<%=Language.ReadLanguage("UserNameExistTips") %>");                    return false;                }                                if(!isCheckPoint){                    alertMessage("<%=Language.ReadLanguage("TotalScoreLessTips") %>");                    return false;                }                                var idCard = o("ctl00_ContentPlaceHolder_IDCard").value;                if(idCard != ""){                    var isCheckIDCard = false;
                    $.ajax({
                        url: "Ajax.aspx?Action=CheckIDCard&IDCard=" + idCard,
                        async: false,
                        success: function(data) {
                            data = JSON.parse(data);
                            if(data.result == "true"){                                isCheckIDCard = true;                            }                            else{                                alertMessage("<%=Language.ReadLanguage("IDCardOverflow").Replace("$MaxUserNum", Config.ReadConfigInfo().MaxUserNum.ToString()) %>");                                isCheckIDCard = false;                            }
                        }
                    });                    return isCheckIDCard;                }            }            return true;        }        else{             return false;        }     }    function checkGroup(value){        if(value == "1"){            $(".point").show();        }        else{            $(".point").hide();        }        isCheckPoint = true;        checkPoint(o("ctl00_ContentPlaceHolder_Point").value);    }    $(".groupid").change();</script></asp:Content>