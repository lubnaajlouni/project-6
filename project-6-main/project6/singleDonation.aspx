<%@ Page Title="details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="singleDonation.aspx.cs" Inherits="project6.WebForm10" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript">
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Received, Donation details will be in your account after approval of your request!',
                html: '<a href="https://localhost:44333/Default">Home Page</a>',

            }).then(function () {
                window.location = "https://localhost:44333/myProfile";
            });

        }
    </script>
    <style>
        .main1 {
            margin-top: 50px;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
            height: 600px
        }

        .dddd img {
            height: 500px;
            width: 500px;
            border-radius: 5%;
        }

        .counter {
            width: 150px;
            display: flex;
            align-items: center;
            /*   position: absolute;*/
            left: 0%;
            bottom: 20%;
        }


            .counter input {
                width: 50px;
                border: 0;
                line-height: 30px;
                font-size: 20px;
                text-align: center;
                background: #1A4D2E;
                color: #fff;
                appearance: none;
                outline: 0;
            }

            .counter span {
                display: block;
                font-size: 25px;
                padding: 0 10px;
                cursor: pointer;
                color: #1A4D2E;
                user-select: none;
            }

        .titlee {
            height: 80px;
            width: 100px;
        }

        .titlee1 {
            height: 80px;
            width: 50px;
        }

            .titlee1 h3 {
            }

        .Reqbtn {
            float: right;
            background-color: #1A4D2E;
        }

        @media only screen and (min-device-width: 0px) and (max-device-width: 481px) {
            .main1 {
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
                height: 1000px;
            }

            .dddd {
                width: 100%;
            }

                .dddd img {
                    height: 300px;
                    width: 100%;
                    border-radius: 5%;
                }

            .counter {
                width: 50px;
                display: flex;
                align-items: center;
                /*   position: absolute;*/
                left: 0%;
                bottom: 20%;
            }

                .counter input {
                    width: 50px;
                    border: 0;
                    line-height: 30px;
                    font-size: 20px;
                    text-align: center;
                    background: #1A4D2E;
                    color: #fff;
                    appearance: none;
                    outline: 0;
                }

                .counter span {
                    display: block;
                    font-size: 25px;
                    padding: 0 10px;
                    cursor: pointer;
                    color: #1A4D2E;
                    user-select: none;
                }
            /*      .titlee
                {
                    height:80px;
                    width:100px;
                    margin-bottom:300px;
                }*/
            .titlee1 {
                font-size: 15px !important;
            }
            /*.titlee1 h3
                  {
                      font-size:15px;
                  }*/
            .Reqbtn {
                background-color: #1A4D2E;
                float: none;
                width: 100%;
                color: white;
                height: 50px;
            }
        }

        @media only screen and (min-device-width: 481px) and (max-device-width: 768px) {
            .dddd img {
                height: 400px;
                width: 100%;
                border-radius: 5%;
            }

            .main1 {
                margin-top: 50px;
                display: flex;
                flex-direction: column;
                justify-content: space-around;
                box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
                height: 1100px
            }
        }

        @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
            .dddd img {
                height: 400px;
                width: 100%;
                border-radius: 5%;
            }

            .main1 {
                margin-top: 50px;
                display: flex;
                flex-direction: column;
                justify-content: space-around;
                box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
                height: 1000px
            }

            .Reqbtn {
                background-color: #1A4D2E;
                float: none;
                width: 100%;
                color: white;
                height: 50px;
            }

            .titlee {
                height: 80px;
                width: 100px;
            }

            .titlee1 {
                height: 80px;
                width: 50px;
            }
        }
    </style>
    <%

        string donation_id = Request.QueryString["donation_id"];
        SqlConnection connection = new SqlConnection("data source =  DESKTOP-KG1IER4\\SQLEXPRESS; database = project6 ; integrated security=SSPI");
        connection.Open();
        string query = $"SELECT  donation.img_donation,donation.name_donation,donation.quantity_donation,donation.description_donation,AspNetUsers.Address from donation inner join AspNetUsers on donation.id_donor=AspNetUsers.Id where id_donation= {donation_id}";
        SqlCommand com = new SqlCommand(query, connection);
        SqlDataReader sdr = com.ExecuteReader();
        sdr.Read();
    %>

    <ol class="breadcrumb container">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Donation-tree.aspx">Donations</a></li>
        <li class="active">Details</li>
    </ol>

    <div class="main1 container">
        <div class="dddd">
            <div class="col-lg-6">
                <img src="pic/<%=sdr[0] %>">
            </div>

            <div class=" col-lg-6">
                <table class="nav-justified">
                    <tr>
                        <td class="titlee1">
                            <h3>Name</h3>
                        </td>
                        <td class="titlee">
                            <br />

                            <p><%=sdr[1] %></p>
                        </td>
                    </tr>

                    <tr>
                        <td class="titlee1">
                            <h3>Description</h3>
                        </td>
                        <td class="titlee">
                            <br />


                            <p style="margin: 0;"><%=sdr[3] %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="titlee1">
                            <h3>Address</h3>
                        </td>
                        <td class="titlee">
                            <br />


                            <p>Jordan,<%=sdr[4] %></p>
                        </td>
                    </tr>

                    <tr>

                        <td class="titlee1">
                            <h3>available quantity</h3>
                        </td>
                        <td class="titlee">
                            <br />


                            <div class="counter">
                                <span class="down" onclick='decreaseCount(event, this)'>-</span>
                                <input onkeydown="return false" id="county" type="text" value="1" runat="server" />
                                <span class="up" onclick='increaseCount(event, this)'>+</span>
                            </div>
                        </td>
                    </tr>

                </table>
                <br />
                <br />
                <br />
                <br />
                <br />

                <asp:Button ID="Button1" OnClick="Button1_Click" class="btn btn-success Reqbtn" runat="server" Text="Request" />
            </div>
        </div>
    </div>
    <script>
        var x = <%=sdr[2] %>;
        function increaseCount(a, b) {
            var input = b.previousElementSibling;
            var value = parseInt(input.value, 10);
            value = isNaN(value) ? 0 : value;
            if (value < x) {
                value++;
            }
            input.value = value;
        }

        function decreaseCount(a, b) {
            var input = b.nextElementSibling;
            var value = parseInt(input.value, 10);
            if (value > 1) {
                value = isNaN(value) ? 0 : value;
                value--;
                input.value = value;
            }
        }
    </script>
</asp:Content>
