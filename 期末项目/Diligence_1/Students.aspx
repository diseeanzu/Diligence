<%@ Page Title="" Language="C#" MasterPageFile="~/Students.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Diligence_1.Students1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Students.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodyu">
         <asp:Button  runat="server" ID="ASER" Text="添加" BorderWidth="1px" Width="300px" BorderColor="#CC33FF" BackColor="#66FFFF" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
  

</asp:Content>
