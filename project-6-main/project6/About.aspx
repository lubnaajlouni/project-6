<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project6.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .cardtext1 {
            margin-left: 10px;
        }

        .aboutphoto {
            width: 100%;
            height: 350px;
            background-image: url("about1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .textplace {
            width: 100%;
            margin-top: 15px;
        }

        .cont2 {
            display: flex;
            flex-direction: row;
            margin-top: 8%;
            width: 100%;
            background-color: #FF9F29;
        }

        .textplace1 {
            width: 50%;
            font-size: 18px;
            font-family: 'Times New Roman', Times, serif;
            margin-left: 5%;
        }

        .aboutphoto2 {
            width: 45%;
            height: auto;
            background-image: url("about2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .cont3 {
            margin-top: 8%;
        }

        .cont4 {
            display: flex;
            flex-direction: row;
            height: 350px;
            margin-top: 10%;
        }

        .card1 {
            width: 30%;
            margin-left: 2%;
            height: 100%;
            background-color: #FF9F29;
        }

        .cardphoto1 {
            width: 100%;
            height: 50%;
            background-image: url("card1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .cardphoto2 {
            width: 100%;
            height: 50%;
            background-image: url("card2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .cardphoto3 {
            width: 100%;
            height: 50%;
            background-image: url("card3.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        @media all and (min-device-width:0 ) and (max-device-width:480px ) {
            .cont2 {
                display: flex;
                flex-direction: column;
                width: 100%;
            }

            .cont4 {
                display: flex;
                flex-direction: column;
                width: 100%;
                margin-top: 2%;
                margin-left: 0;
                height: 40%;
            }

            .card1 {
                width: 100%;
                height: 350px;
            }

            .aboutphoto2 {
                width: 100%;
                height: 350px;
            }

            .textplace1 {
                width: 90%;
                height: auto;
            }
        }
    </style>

    <div class="aboutphoto">
    </div>
    <div class="container" class="textplace">
        <h1 style="text-align: center"><b>About Rootuilder Site</b></h1>
        <h2><b>Who we are ?</b></h2>
        <p style="font-size: 25px; font-family: 'Times New Roman', Times, serif;">
            Working together for the love of trees since 1973.
            The Tree Council brings everyone together with a shared mission to care for trees and our planet’s future. We inspire and empower organisations, government, communities and individuals with the knowledge and tools to create positive, lasting change at a national and local level.
        
        </p>
        <div class="cont2">
            <div class="aboutphoto2"></div>
            <div class="textplace1">
                <h2><b>Our aims</b></h2>
                <p>-To champion trees in everything we do.</p>
                <p>-To be the trusted voice of the tree sector.</p>
                <p>-To drive practical science and research into our treescape.</p>
                <p>-To enable dialogue and action in the sector, nationally and locally.</p>
                <p>-To encourage, inspire and persuade people of all ages and backgrounds to value and love trees.</p>
                <p>-To harness the energy, enthusiasm and expertise of our team, Tree Wardens and communities to plant, care for and protect trees and make a lasting impact on our world.</p>
                <p>-To lead and connect organisations and, together, persuade decision-makers, influence national policy and deliver local action.</p>
            </div>
        </div>
        <div class="cont3">
            <h2 style="text-align: center;"><b>We’re better together.</b></h2>
            <p style="font-size: 25px; font-family: 'Times New Roman', Times, serif;">
                To help us to plant, protect and care for trees and hedgerows, why not consider donating or joining us as a volunteer Tree Warden? Or if you are an organisation, you might consider becoming one of our members.
        
            </p>
        </div>
        <div class="cont4">
            <div class="card1">
                <div class="cardphoto1"></div>
                <div class="cardtext1">
                    <h3>Working with volunteers</h3>
                    <p>We manage a national force of volunteer Tree Wardens who champion their local trees. They organise activities, fundraise, research and advise on trees and related topics.</p>
                </div>
            </div>
            <div class="card1">
                <div class="cardphoto2"></div>
                <div class="cardtext1">
                    <h3>Building partnerships</h3>
                    <p>To lead and connect organisations to persuade decision-makers, influence national policy and deliver local action around our treescape.</p>
                </div>
            </div>
            <div class="card1">
                <div class="cardphoto3"></div>
                <div class="cardtext1">
                    <h3>Our science and research</h3>
                    <p>We drive practical science and research into issues affecting our treescape such as pests and diseases</p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
