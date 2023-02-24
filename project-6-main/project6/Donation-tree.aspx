<%@ Page Title="Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donation-tree.aspx.cs" Inherits="project6.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .save {
            display: grid;
            grid-template-columns: auto auto;
            /* background-color:green;*/

            background-image: url(imgs/aerial-view-green-forest.jpg);
            height: 760px;
            width: 100%;
            background-size: cover;
            background-position: center;
        }

            .save img {
                height: 500px;
                margin-top: 150px;
            }

        .txt {
            color: aliceblue;
            font-size: 18px;
        }

            .txt h2 {
                font-weight: 900;
                color: orangered;
                text-align: center;
            }

        .card {
        }

        .a-box {
            display: inline-block;
            width: 240px;
            text-align: center;
            margin: 20px;
        }

        .img-container {
            height: 230px;
            width: 200px;
            overflow: hidden;
            border-radius: 0px 0px 20px 20px;
            display: inline-block;
        }

            .img-container img {
                /*transform: skew(0deg, -13deg);*/
                height: 250px;
                /*margin: -35px 0px 0px -70px;*/
            }

        .inner-skew {
            display: inline-block;
            border-radius: 20px;
            overflow: hidden;
            padding: 0px;
            /*transform: skew(0deg, 13deg);*/
            font-size: 0px;
            /*margin: 30px 0px 0px 0px;*/
            background: #c8c2c2;
            height: 250px;
            width: 200px;
        }

        .text-container {
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
            padding: 120px 20px 20px 20px;
            border-radius: 20px;
            background: #fff;
            margin: -120px 0px 0px 0px;
            line-height: 19px;
            font-size: 14px;
        }

            .text-container h3 {
                margin: 20px 0px 10px 0px;
                color: #04bcff;
                font-size: 18px;
            }

        div.cards {
            margin: 20px auto;
            max-width: 90%;
            text-align: center;
        }

        .mainimg {
            height: 300px;
            width: 100%;
            background-size: cover;
            background-position: center;
            background-image: url("imgs/forest-1598756_1920.jpg");
        }

        .text-image {
        }

        .h1-DONATIONS h1 {
            text-align: center;
            color: #1A4D2E;
            font-weight: 600;
        }

        .imgcard {
            width: 100%;
            height: 300px;
        }
    </style>

    <div class="mainimg">
        <div class="text-image">
        </div>
    </div>
    <ol class="breadcrumb container">
        <li><a href="Default.aspx">Home</a></li>

        <li class="active">Donations</li>
    </ol>
    <div class="h1-DONATIONS">
        <h1>DONATIONS</h1>
    </div>
    <br />
    <%--<div class="container" id="container" runat="server">

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>--%>

    <div class="cards">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [donation] WHERE ([id_category] = @id_category) and donation.Accept=1 and donation.Available=1">
            <SelectParameters>
                <asp:QueryStringParameter Name="id_category" QueryStringField="category_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <% string category_id = Request.QueryString["category_id"];%>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>


                <div class="a-box">
                    <div class="img-container">
                        <div class="img-inner">

                            <img class="inner-skew" src="pic/<%#Eval("img_donation")%>">
                        </div>
                    </div>
                    <div class="text-container">
                        <h3><%#Eval("name_donation")%></h3>
                        <div>
                        </div>
                        <div class="card-flap flap2">
                            <div class="card-actions">
                                <a href="singleDonation.aspx?donation_id=<%#Eval("id_donation")%>">Show more</a>

                            </div>
                        </div>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>





</asp:Content>
