<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="project6.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="user.css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-content" style="background-color: #1A4D2E;">
            <!-- Top navbar -->
            <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
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
                                        <img alt="Image placeholder" src="https://demos.creative-tim.com/argon-dashboard/assets-old/img/theme/team-4.jpg">
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
            </nav>

            <!-- Header container -->
            <div class="container-fluid d-flex align-items-center" style="background-color: #1A4D2E;">
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

                                    <img src="https://demos.creative-tim.com/argon-dashboard/assets-old/img/theme/team-4.jpg" class="rounded-circle" />
                                </div>
                            </div>
                        </div>
                        <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                            <div class="col-4 text-right">
                                <asp:Button ID="spic" runat="server" CssClass="btn btn-sm btn-primary" Style="margin: 15%;" Text="Edit pic" />
                            </div>
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
                                    <p>Ryan — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music.</p>
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
                                <h6 class="heading-small text-muted mb-4">User information</h6>
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
                                                <asp:Label class="form-control-label" runat="server">Location</asp:Label>
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
                                        <asp:Button ID="editinfo" runat="server" CssClass="btn btn-sm btn-primary" Text="Edit Info" OnClick="editinfo_Click" />
                                    </div>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
