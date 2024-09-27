<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="de1.ManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        table {
            width: 100%; /* Đặt chiều rộng bảng là 100% */
            height: 50px;
            border-collapse: collapse; /* Xóa khoảng cách giữa các ô */
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .delete-button {
            color: red;
            text-decoration: none;
            cursor: pointer;
        }
       

    </style>
     <div>

            <label for="txtCourseName">Course name</label>
            <asp:TextBox ID="txtCourseName" runat="server" Required="true"></asp:TextBox><br /><br />

            <label for="txtDuration">Duration</label>
            <asp:TextBox ID="txtDuration" runat="server" Required="true"></asp:TextBox><br /><br />

            <label for="ddlCategory">Category</label>
            <asp:DropDownList ID="ddlCategory" runat="server">
                <asp:ListItem Value="Programming for Devs">some thing</asp:ListItem>
              
            </asp:DropDownList><br /><br />

            <label for="txtDescription">Description</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" Required="true"></asp:TextBox><br /><br />

            <label for="fuPicture">Picture</label>
            <asp:FileUpload ID="fuPicture" runat="server" /><br />
            <span>Chưa có tệp nào được chọn</span><br /><br />

            <asp:Button ID="btnAdd" runat="server" Text="add"  />
        </div>
        <table>
            <tr>
                <td>No </td>
                <td>Images</td>
                <td>Name</td>
                <td></td>
                <td></td>
            </tr>
            <asp:Repeater ID="rptCourse" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td>

                        </td>
                       
                        <td>
                            <img src="<%# Eval("ImageFilePath") %>" alt="Alternate Text" />
                        </td>
                         <td>
                            <p><%# Eval("Name") %></p>
                        </td>


                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Delte" />

                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Edit" />
                        </td>
                    </tr>


                </ItemTemplate>
            </asp:Repeater>

        </table>
    
</asp:Content>
