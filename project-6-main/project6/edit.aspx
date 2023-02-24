<%@ Page Title="profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="project6.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="user3.css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Edited',
                text: 'Your edit has been succesfully done',
                type: 'success'
            });
        }
    </script>
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

                                <img id="img" src="imgs/pic.png" runat="server" class="rounded-circle" />
                            </div>
                        </div>
                    </div>
                    <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                        <div class="col-4 text-right">
                        </div>
                        <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" />
                    </div>
                    <div class="card-body pt-0 pt-md-4">
                        <div class="row">
                            <div class="col">
                            </div>
                        </div>
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
                        </div>


                        <div class="card-body" runat="server" id="editvisible">
                            <h6 class="heading-small text-muted mb-4">Edit your information</h6>
                            <div class="pl-lg-4">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group focused">

                                            <asp:Label class="form-control-label" runat="server">Username</asp:Label>
                                            <asp:TextBox ID="uname" class="form-control form-control-alternative" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:Label class="form-control-label" runat="server">Email address</asp:Label>
                                            <asp:TextBox ID="uemail" class="form-control form-control-alternative" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <br />

                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">City</asp:Label>
                                            <div class="col-md-10">
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropDownstyle" Style="color: #B9BBC2;">
                                                    <asp:ListItem>Irbid</asp:ListItem>
                                                    <asp:ListItem>Amman</asp:ListItem>
                                                    <asp:ListItem>Alzarqa</asp:ListItem>
                                                    <asp:ListItem>AlMafraq</asp:ListItem>
                                                    <asp:ListItem>Jerash</asp:ListItem>
                                                    <asp:ListItem>Al Balqa</asp:ListItem>
                                                    <asp:ListItem>Madaba</asp:ListItem>
                                                    <asp:ListItem>Al Karak</asp:ListItem>
                                                    <asp:ListItem>Al Tafilah</asp:ListItem>
                                                    <asp:ListItem>Maan</asp:ListItem>
                                                    <asp:ListItem>AlAqabah</asp:ListItem>
                                                    <asp:ListItem>Ajlun</asp:ListItem>
                                                </asp:DropDownList>
                                                <%--                <asp:TextBox runat="server" ID="Textcity" CssClass="form-control"  />--%>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"
                                                    CssClass="text-danger" ErrorMessage="The city field is required." />
                                                <br />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group focused">
                                            <asp:Label class="form-control-label" runat="server">phone</asp:Label>
                                            <asp:TextBox ID="uphone" class="form-control form-control-alternative" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                <asp:Button Style="font-size: 15px;" ID="Button2" runat="server" CssClass="btn  btn-success" Text="save" OnClick="Button1_Click" />
                            </div>
                        </div>


                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-sm btn-primary" Style="margin: 15%;" Text="your orders" Visible="false" />

            </div>
        </div>
    </div>
</asp:Content>
