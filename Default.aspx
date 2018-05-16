<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .loader {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: url('/Content/Spinner-1s-200px.gif') 50% 50% no-repeat rgb(249,249,249);
        }
    </style>
    <script type="text/javascript">
        $(window).load(function () {
            $(".loader").fadeOut("slow");
        });
    </script>

    <div id="page-container">
        <div id="page-content-wrapper" style="width: 100%; margin-right: 0px; margin-left: 0px;">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">&nbsp;</div>
                </div>



                <div class="row">
                    <div class="col-md-2" style="background-color: red; padding: 28px; color: white;">
                        <a href="#">View/Aim</a>
                    </div>
                    <div class="col-md-6" style="background-color: indianred; padding: 36px;">
                        CANDIDATE REGISTRATION FOR S/sports/1/2018
Registration Starting Date : 10 May 2018 
Registration  Closing  Date : 20 June 2018
Fee  Deposition Last Date    : 20 June 2018 
                        <a href="CandidateRegistration_Home.aspx">For online application Click Here</a>

                    </div>
                    <div class="col-md-4">
                        Result  & Informations
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">&nbsp;</div>
                </div>

                <div class="row">
                    <div class="col-md-2" style="background-color: red; padding: 28px; color: white;">
                        <a href="#">Team</a>
                    </div>
                    <div class="col-md-6" style="background-color: indianred; padding: 36px;">
                        CANDIDATE REGISTRATION FOR S/Edn /1/2018
Registration Starting Date : 20 May 2018 
Registration  Closing  Date : 30 August 2018
Fee  Deposition Last Date    : 30 August 2018 
                      <a href="CandidateRegistration_Education.aspx">For online application Click Here</a>

                    </div>
                    <div class="col-md-4" style="background-color: #8fc8ee;margin-top: -8.8%;color: white;font-size: larger;">
                        Result and Informations
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">&nbsp;</div>
                </div>

                <div class="row">
                    <div class="col-md-2" style="background-color: red; padding: 28px; color: white;">
                        <a href="#">Telephone Directory</a>
                    </div>
                    <div class="col-md-6" style="background-color: indianred; padding: 28px;">
                        <i class="fa fa-1x fa-check-square"></i>&nbsp;Applicant are advised please note their Application Registration Number  

                    </div>
                    <div class="col-md-4">
                        &nbsp;
                    </div>

                </div>
                <div>
                    <div class="col-md-12">&nbsp;</div>
                </div>

                <div class="row">
                    <div class="col-md-2" style="background-color: red; padding: 28px; color: white;">
                        <a href="#">Teaching Staff</a>
                    </div>
                    <div class="col-md-6">
                        &nbsp;

                    </div>
                    <div class="col-md-4">
                        &nbsp;
                    </div>

                </div>
            </div>
        </div>
    </div>
     <div class="loader"></div>

</asp:Content>
