<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="help2.aspx.cs" Inherits="project6.WebForm15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin-top: 5%;
            background-color: darkgrey;
            background-image: url("pic/x.jpg");
            background-size: cover;
        }

        .ss {
            margin-left: 2%;
        }

        .main {
            background-color: white;
            padding: 2% 2%;
            width: 70%;
            margin-left: 15%;
            opacity: 0.8;
        }

        .ss {
            text-align: center;
            font-weight: bold;
        }

        .sss {
            margin-left: 30%;
        }
    </style>
    <div class="main">

        <div class="ss">
            <h2>Contact Us</h2>
        </div>

        <div class="ss">We are here to assist you!</div>
        <br />
        <br />

        <div class="container">
            <div class="sss">
                <div class="row mx-0 justify-content-center">
                    <div class="col-md-7 col-lg-5 px-lg-2 col-xl-4 px-xl-0">
                        <form
                            method="POST"
                            class="w-100 rounded p-4 border bg-white"
                            action="https://herotofu.com/start"
                            enctype="multipart/form-data"
                            errormessage="requrid" controltovalidate=" TextBox1">
                            <label class="d-block mb-4">
                                <span class="d-block mb-2">Name</span>
                                <br />
                                <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="enter name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>


                            </label>
                            <br />
                            <br />

                            <label class="d-block mb-4" id="Not requried">
                                <span class="d-block mb-2">Email </span>
                                <br />
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="name@example.com"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            </label>
                            <br />
                            <br />

                            <label class="d-block mb-4">
                                <span class="d-block mb-2">Write your messege</span>
                                <br />
                                <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="your messege" Style="width: 1000px; height: 100px;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>


                            </label>
                            <br />
                            <br />

                            <div class="mb-3">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>

                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary px-3" Text="submit" Style="background-color: #1A4D2E; margin-left: 20%;" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                    </div>
                    </form>
   
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44333/Default">Home Page</a>',

            }).then(function () {
                window.location = "https://localhost:44301/WebForm1";
            });

        }
    </script>
</asp:Content>
