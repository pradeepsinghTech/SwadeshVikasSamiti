<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Site.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-container">
        <div id="page-content-wrapper" style="width: 100%; margin-right: 0px; margin-left: 0px; min-height: 390.6px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-10">

                        <p>Candidates contact any time for any query or question on following mobile numbers:-</p>

                        <p>
                            8284026734<br />
8574903527<br />
9347971690 (Whats App)<br />
9871517318<br />
9618682330<br />
                        </p>

                        <p>Letter Correspondence made with following address:-</p>
                        <p>
                            Swadesh  Vikas Samiti 
97,
                            <br />
                            Rajput Mohalla, Behind Besic Primary Pathshala
No.1<br />
                            Vill Dholpur Post Bhaina,<br />
                            Tehsil Garhmukteshwar
Distt Hapur (UP) 245205
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="loader"></div>

</asp:Content>

