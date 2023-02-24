<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project6.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .pic {
            width: 100%;
            height: 400px;
            background-image: url("cont.jpeg");
            background-size: cover;
            color: white;
            padding-top: 20px;
        }

        #pp {
            font-size: 30px;
            margin-left: 20px;
            width: 70%;
        }

        .send {
            width: 110px;
            background-color: #FF9F29;
            font-size: 18px;
            padding: 5px 5px 5px 5px;
            margin-left: 20px;
            border-radius: 2px;
        }

        .det1 {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            text-align: center;
        }

        @media all and (min-device-width:0 ) and (max-device-width:480px ) {
            #pp {
                font-size: 20px;
                width: 80%;
            }

            .det1 {
                display: flex;
                flex-direction: column;
                justify-content: space-around;
            }
        }
    </style>

    <div class="container" class="contt">
        <div class="pic">
            <h1 style="margin-left: 20px; margin-top: 5%;">Contact us</h1>
            <p id="pp">The customer's opinion is very important to us in order ti increase trust between both of us , so do not hesitate to communicate </p>
            <br />
            <div class="send"><a href="mailto:Rootuilder@gmail.com">Send Email </a></div>
        </div>
        <div class="details">
            <h1 style="text-align: center">Contact info</h1>
            <br />
            <div class="det1">
                <div class="det">
                    <h3><b>Our Office</b> </h3>
                    <p>Amman,Jorden street</p>
                </div>
                <div class="det">
                    <h3><b>Open Office Hours</b> </h3>
                    <p>8am-6pm</p>
                </div>
                <div class="det">
                    <h3><b>Get in Touch</b> </h3>
                    <p>+457584556858</p>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
