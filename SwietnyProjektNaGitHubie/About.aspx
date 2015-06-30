<%@ Page Title="Świetny projekt na piąteczkę (co najmniej)" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SwietnyProjektNaGitHubie.About" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><span style="color: hotpink" ><%: Title %></span></h2>
    <h1><span style="font:900">Wasza Eminencjo, trafiłeś na doskonałą stronę!</span></h1>
    <p>Ta doskonała strona wysyła maile (to też protokół sieciowy, nieprawdaż?).<br />
        Równoważne z treścią poniżej.
    </p>
    <img src="panda5.5.gif">&nbsp;</img>
    <br /><br /><br />
    <p style="background-color:hotpink">
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Stawiam 5.5" Checked="True" /><br />
        <asp:CheckBox ID="CheckBox2" runat="server" Enabled="False" Text="Nie stawiam 5.5" />
    </p>
    <p>&nbsp;</p>
</asp:Content>
