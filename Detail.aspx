<%@ Page Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="de1.Detail" %>
<asp:Content ID="detail" ContentPlaceHolderID="detailContent" runat="server">
    <h3 style="color:red;">Big Data Anakysis  with Spark</h3>
    <p>-----</p>
    <br />

    <asp:Repeater ID="rptCourse" runat="server">
    <ItemTemplate>
       
            <h3> <strong>Category Name: <%# Eval("CategoryName") %></strong></h3>
           
            <h3<strong style="color: red;"><%# Eval("Duration") %> mins</strong></h3>
            <p><%# Eval("Description") %> </p>
            <p>Number of course registrations: <%# Eval("numberView") %></p>
          
       
    </ItemTemplate>
</asp:Repeater>
</asp:Content>