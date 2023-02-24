<%@ Page Title="Donation form" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="beneficiary.aspx.cs" Inherits="project6.Account.WebForm1" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        .tablecon {
            margin-top: 30px;
            width: 80%;
            font-size: 20px;
            background-color: black;
            opacity: 0.5;
            color: white;
            border-collapse: separate;
            border-spacing: 0 1em;
            margin-left: 10%;
            padding-left: 40px;
        }

        body {
            background-image: url("12.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        tdd {
            width: 50%;
        }

        .infoo {
            width: 100%;
            text-align: center;
            font-size: 35px;
            margin-top: 30px;
            background-color: black;
            opacity: 0.8;
            color: white;
        }
    </style>

    <div class="infoo">
        <asp:Label ID="Label2" runat="server" Text="Donation Information"></asp:Label><hr />
    </div>
    <table class="tablecon ">
        <tr>
            <td class="tdd">
                <asp:Label ID="txtname" runat="server" Text="Name"></asp:Label></td>
            <td style="color: black" class="tdd">
                <asp:TextBox ID="Pname" runat="server" required="required"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="tdd">
                <asp:Label ID="txtdes" runat="server" Text="Description"></asp:Label></td>
            <td style="color: black" class="tdd">
                <asp:TextBox ID="Pdesc" runat="server" required="required"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="tdd">
                <asp:Label ID="txtquant" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td style="color: black" class="tdd">
                <asp:TextBox ID="Pprice" runat="server" required="required"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Pprice" ErrorMessage="Enter only numbers" ValidationExpression="\b(?&lt;!\.)\d+(?!\.)\b" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td class="tdd">
                <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label></td>
            <td style="color: black" class="tdd">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [id_category], [name_category] FROM [category]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name_category" DataValueField="id_category">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="tdd">
                <asp:Label ID="Label7" runat="server" Text="Image"></asp:Label></td>
            <td style="color: black" class="tdd">
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" accept=".png,.jpg,.jpeg,.gif,.jfif" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required image" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdd">&nbsp;</td>
            <td class="tdd">
                <asp:Button ID="Button1" runat="server" BackColor="#FF8D00" ForeColor="Black" Text="Donate" OnClick="Button1_Click" /></td>

        </tr>
    </table>

</asp:Content>
