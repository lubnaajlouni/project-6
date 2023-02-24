<%@ Page Title="profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myProfile.aspx.cs" Inherits="project6.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="user3.css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <div class="main-content" style="background-image: url(pic/greentree.jpg); background-size: cover;">
        <!-- Top navbar -->
        <%--        <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
            <div class="container-fluid">
                <!-- Brand -->
                <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="user.aspx" target="_blank">User profile</a>
                <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="edituser.aspx" target="_blank">Edit profile</a>

                <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="" target="_blank">Orders</a>
                <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="" target="_blank">Home</a>
                <!-- User -->
                <ul class="navbar-nav align-items-center d-none d-md-flex">
                    <li class="nav-item dropdown">
                        <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <div class="media align-items-center">
                                <span class="avatar avatar-sm rounded-circle">
                                    <img alt="Image placeholder" src="imgs/pic.png">
                                </span>
                                <div class="media-body ml-2 d-none d-lg-block">
                                    <span class="mb-0 text-sm  font-weight-bold">
                                        <asp:Label class="form-control-label" runat="server" ID="ssname"></asp:Label></span>


                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>--%>

        <!-- Header container -->
        <div class="container-fluid d-flex align-items-center" style="display: none;">
            <div class="row" style="background-color: #1A4D2E;">
                <div class="col-lg-7 col-md-10">
                    <h1 class="display-2 text-white"></h1>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
                <div class="card card-profile shadow">
                    <div class="row justify-content-center">
                        <div class="col-lg-3 order-lg-2">
                            <div class="card-profile-image">

                                <img id="img" runat="server" src="imgs/pic.png" class="rounded-circle" />
                            </div>
                        </div>
                    </div>
                    <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                        <div class="col-4 text-right">
                        </div>
                    </div>
                    <div class="card-body pt-0 pt-md-4">
                        <div class="row">
                            <div class="col">
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="text-center">
                            <h3>
                                <asp:Label class="form-control-label" runat="server" ID="name1"></asp:Label>
                                <span class="font-weight-light"></span>
                            </h3>
                            <div class="h5 font-weight-300">
                                <i class="ni location_pin mr-2"></i>
                                <asp:Label class="form-control-label" runat="server" ID="roleid1"></asp:Label>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-8 order-xl-1">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">My account</h3>
                            </div>

                        </div>


                        <div class="card-body" runat="server" id="infovisible">
                            <div class="pl-lg-4">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group focused">
                                            <asp:Label class="form-control-label" runat="server">Username</asp:Label>
                                            <asp:Label ID="username" class="form-control form-control-alternative" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:Label class="form-control-label" runat="server">Email address</asp:Label>
                                            <asp:Label ID="email" class="form-control form-control-alternative" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group focused">
                                            <asp:Label class="form-control-label" runat="server">City</asp:Label>
                                            <asp:Label ID="location" class="form-control form-control-alternative" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group focused">
                                            <asp:Label class="form-control-label" runat="server">phone</asp:Label>
                                            <asp:Label ID="phone" class="form-control form-control-alternative" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 text-right">
                                    <asp:Button ID="editinfo" runat="server" CssClass="btn btn-sm btn-Success" Text="Edit Info" OnClick="editinfo_Click" />
                                </div>

                            </div>
                        </div>


                    </div>

                </div>


            </div>


        </div>
    </div>
    <h2 style="text-align: center;">My Orders</h2>
    <div class="container" style="display: flex; flex-direction: column; justify-content: center; margin-top: 5%;">
        <div style="width: 95%;">

            <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
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
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                    <asp:HyperLinkField Text="Accepted">
                        <ControlStyle ForeColor="#009900" />
                        <FooterStyle ForeColor="#009933" />
                    </asp:HyperLinkField>
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.UserName, name_donation ,img_donation,orders.quantity ,AspNetUsers.PhoneNumber
FROM (((orders INNER JOIN AspNetUsers ON orders.id_user = AspNetUsers.Id)
INNER JOIN donation on orders.id_donation = donation.id_donation)
INNER JOIN category on orders.id_category = category.id_category)
where orders.Accept=1 and AspNetUsers.ID=@id ;"
                OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="id_user" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>
    <asp:Label Style="text-align: center; margin-left: 13.5%;" ID="Label1" runat="server" Text=""></asp:Label>


</asp:Content>
