<%@ Page Title="dashboard" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DonationsRequests.aspx.cs" Inherits="project6.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #a2 {
            background-color: #ECECEC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="margin-left: 3%;">Donations Requests</h3>
    <div style="display: flex; justify-content: center; margin-top: 5%;">
        <div style="width: 95%;">
            <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_donation" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="id_donation" HeaderText="id_donation" InsertVisible="False" ReadOnly="True" SortExpression="id_donation" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="name_donation" HeaderText="name_donation" SortExpression="name_donation" />
                    <asp:TemplateField HeaderText="img_donation" SortExpression="img_donation">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img_donation") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# "~/pic/"+Eval("img_donation") %>' Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="quantity_donation" HeaderText="quantity_donation" SortExpression="quantity_donation" />
                    <asp:BoundField DataField="name_category" HeaderText="name_category" SortExpression="name_category" />
                    <asp:HyperLinkField Text="Accept" DataNavigateUrlFields="id_donation" DataNavigateUrlFormatString="AcceptDonations?id_donation={0}" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select donation.id_donation, AspNetUsers.UserName,donation.name_donation,donation.img_donation,donation.quantity_donation,category.name_category
from ((donation INNER JOIN AspNetUsers ON donation.id_donor = AspNetUsers.Id)
INNER JOIN category on donation.id_category = category.id_category)
where donation.Accept=0;"></asp:SqlDataSource>
</asp:Content>
