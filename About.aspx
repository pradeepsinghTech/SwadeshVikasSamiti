<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Site.About" %>

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
            $(".loader").fadeOut('1000');
        });
    </script>
</asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-container">
        <div id="page-content-wrapper" style="width: 100%; margin-right: 0px; margin-left: 0px; min-height: 390.6px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        Swedesh Development Society has been registered under society registration act 1860 at office of Registrar of Societies Meerut Division with effect from 23 March 2018.  Main aim /view of society is as under :-

	<p>Conduct various type of Games, sports Competition and written Exam, and choose brilliant and promising youths and student through these events. And provide them high level studies, coaching for Jobs and games coaching free of cost.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10">
                        <table class="table-bordered    ">
                            <tr>
                                <td>Name</td>
                                <td>Designation</td>
                                <td>Contact No</td>
                                <td>Email ID</td>
                            </tr>
                            <tr>
                                <td>Mrs Sudesh</td>
                                <td>President and Managing Director</td>
                                <td>9618682330</td>
                                <td>Swedeshtomar@gmail.com</td>
                            </tr>
                            <tr>
                                <td>Mrs Jyoti</td>
                                <td>Vice President</td>
                                <td>7248751788</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>Mr Jitender Kumar</td>
                                <td>Secretary</td>
                                <td>9871517318</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>Mr Lavkush Kumar</td>
                                <td>Treasurer</td>
                                <td>9347971690</td>
                                <td>lktomar3090@gmail.com</td>
                            </tr>
                            <tr>
                                <td>Mr RS Rawat
                                </td>
                                <td>Member</td>
                                <td>8574903527</td>
                                <td>-</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="loader"></div>

</asp:Content>
