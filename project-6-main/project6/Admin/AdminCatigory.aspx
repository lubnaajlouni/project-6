<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCatigory.aspx.cs" Inherits="project6.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display: flex; justify-content: center;">
        <div style="width: 80%;">
            &nbsp;&nbsp;&nbsp; Name&nbsp;  
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;  Description&nbsp;  
      
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; Image&nbsp;
    <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:Button class="btn btn-warning" Style="position: absolute; left: 80%; background-color: #FF9F29" ID="Button1" runat="server" Text="Add Category" OnClick="Button1_Click" />
        </div>
    </div>

    <div style="display: flex; justify-content: center; margin-top: 5%;">
        <div style="width: 95%;">
            <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_category" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" OnRowUpdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="id_category" HeaderText="id_category" InsertVisible="False" ReadOnly="True" SortExpression="id_category" />
                    <asp:BoundField DataField="name_category" HeaderText="name_category" SortExpression="name_category" />
                    <asp:TemplateField HeaderText="img_category" SortExpression="img_category">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("img_category") %>' Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="description_category" HeaderText="description_category" SortExpression="description_category" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [category] WHERE [id_category] = @id_category" InsertCommand="INSERT INTO [category] ([name_category], [img_category], [description_category]) VALUES (@name_category, @img_category, @description_category)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [name_category] = @name_category, [img_category] = @img_category, [description_category] = @description_category WHERE [id_category] = @id_category">
        <DeleteParameters>
            <asp:Parameter Name="id_category" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name_category" Type="String" />
            <asp:Parameter Name="img_category" Type="String" />
            <asp:Parameter Name="description_category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name_category" Type="String" />
            <asp:Parameter Name="img_category" Type="String" />
            <asp:Parameter Name="description_category" Type="String" />
            <asp:Parameter Name="id_category" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
