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

        <a href="../Content/AddProduct.aspx">Add product new</a>
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
                        <td> 1</td>
                       
                        <td>
                            <img src="#" alt="Alternate Text" />
                        </td>
                         <td>
                            <h2>name</h2>
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
