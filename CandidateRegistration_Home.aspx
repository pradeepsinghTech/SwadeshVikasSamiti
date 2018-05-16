<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateRegistration_Home.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Site.CandidateRegistration_Home" %>

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
                <div id="frmError" runat="server">
                    <span style="color: red">Please fill all mandatory fields.</span>
                    <br />
                    <br />
                </div>
                <div class="row">
                    <div class="col-md-3">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info" id="dvSuccess">
                            <strong><i class="fa fa-1x fa-clock-o"></i></strong>
                            Canditate Registration
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">Name of the applicant</div>
                    <div class="col-md-3">
                        <input type="text" runat="server" onkeypress="return onlyAlphabets(event,this);" id="txtApplicantName" />
                    </div>

                    <div class="col-md-3">Fathers Name</div>

                    <div class="col-md-3">
                        <input type="text" runat="server" onkeypress="return onlyAlphabets(event,this);" id="txtFathersName" />
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">Mothers Name</div>
                    <div class="col-md-3">
                        <input type="text" runat="server" onkeypress="return onlyAlphabets(event,this);" id="txtMothersName" />
                    </div>

                    <div class="col-md-3">DOB</div>

                    <div class="col-md-3">
                        <input type="date" runat="server" id="txtDOB" />

                        <img src="calender.png" />
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-3">UID No</div>
                    <div class="col-md-3">
                        <input type="text" id="txtUIDNumber" onkeypress="return isNumber(event)" maxlength="12" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">&nbsp;</div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info">
                            <strong><i class="fa fa-1x fa-bicycle"></i></strong>
                            Candidate Registration for Sports adv No S/sports/1/2018
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info" id="EducationalDetails">
                            <strong><i class="fa fa-1x fa-book"></i></strong>
                            Educational Qualification
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10">
                        <table>
                            <thead>
                                <tr style="background-color: burlywood">
                                    <td>Exam passed</td>
                                    <td>School name</td>
                                    <td>Board/University</td>
                                    <td>Roll No</td>
                                    <td>Year of passing</td>
                                    <td>Total marks</td>
                                    <td>Marks obtained </td>
                                    <td>Percentage</td>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td style="background-color: cadetblue">High School (10th)</td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return onlyAlphabets(event,this);" id="txt10Schoolname" /></td>
                                    <td>
                                        <input type="text" runat="server" id="txt10thBoard" />
                                    </td>
                                    <td>
                                        <input type="text" runat="server" id="txt10RollNo" /></td>
                                    <td>
                                        <input type="text" runat="server" id="txt10YoP" /></td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txt10TotalMarks" /></td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txt10MarksObtained" /></td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txt10Percentage" /></td>
                                </tr>
                                <tr>
                                    <td style="background-color: cadetblue">Intermediate (12th)</td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return onlyAlphabets(event,this);" id="txt12Schoolname" /></td>
                                    <td>
                                        <input type="text" runat="server" id="txt12thBoard" />
                                    </td>
                                    <td>
                                        <input type="text" runat="server" id="txt12RollNo" /></td>
                                    <td>
                                        <input type="text" runat="server" id="txt12YoP" /></td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txt12TotalMarks" /></td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txt12MarksObtained" /></td>
                                    <td>
                                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txt12Percentage" /></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info" id="PermanentAddress">
                            <strong><i class="fa fa-1x fa-address-book"></i></strong>
                            Permanent Addresss
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">Address</div>
                    <div class="col-md-8">
                        <asp:TextBox TextMode="MultiLine" runat="server" ID="txtAddress_per"></asp:TextBox>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">PIN</div>
                    <div class="col-md-4">
                        <input type="text" onkeypress="return isNumber(event)" runat="server" id="txtPin_Per" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">District</div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlDistrict" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">State</div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlState" runat="server">
                            <asp:ListItem Text="Uttar Pradesh" Value="0">
                            </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info" id="CorrespondenceAddress">
                            <strong><i class="fa fa-1x fa-address-book"></i></strong>
                            Correspondance Address
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">Address</div>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtAddressCorr"></asp:TextBox>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">PIN</div>
                    <div class="col-md-4">
                        <input type="text" runat="server" onkeypress="return isNumber(event)" id="txtPinCorr" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">District</div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlDIsrictCorr" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">State</div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlStateDD" runat="server">
                            <asp:ListItem Text="Uttar Pradesh" Value="0">
                            </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">Category:Gen/OBC/SC/ST</div>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-heading">
                            <strong><i class="fa fa-1x fa-info"></i></strong>
                            Are you Economical Disabled for Gen Category.if Yes will submit your BPL card and income certificate of your father/family after selection and 
                            other verfication will be done by SDS
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:CheckBox ID="ChkEcDisabledGen" runat="server" />Yes/No
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">Photo Upload</div>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        &nbsp;<asp:Button ID="btnUpload1" runat="server" Text="Upload Photo" OnClick="btnUpload1_Click" />
                    </div>
                    <div class="col-md-3">Signature Upload</div>

                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        &nbsp;<asp:Button ID="btnUpload2" runat="server" Text="Upload Signature" OnClick="btnUpload2_Click" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-warning">
                            <strong><i class="fa fa-1x fa-warning"></i></strong>
                            मैं घोषङा करता/करती हूँ की मेरे द्वारा दी गई सभी सूचना / जानकारी पूर्णतया सत्य है । यदि भविष्य में किसी भी समय मेरे द्वारा दी गई जानकारी झूटी या गलत पाई जाती है तो मेरी उम्मीदवारी बिना किसी पूर्व सूचना के निरस्त कर दी जाएगी । इसके लिए मैं किसी दावे का हक़दार नहीं हूँ और भविष्य मैं भी नहीं रहूँगा / रहूंगी । मैं यह भी घोषङा  करता/करती हूँ की परीक्षा के दौरान मेरे साथ कोई दुर्घटना होती है या फिर चोट लगती है तोह इसके लिए मैं स्वयं जिम्मेवार रहूँगा/रहूंगी । तथा समिति की इसमें कोई जिम्मेवारी नहीं होगी ।
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6"></div>
                    <asp:CheckBox ID="chkAccepttheAgreement" runat="server" />
                    I Agree/ मैं सहमत हूँ 
                </div>
                <div class="row">
                    <div class="col-md-3">&nbsp;</div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-warning">
                            <strong><i class="fa fa-1x fa-info"></i></strong>
                            You will have to pay an amount of Rs 100 in order to finish the Registration
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info">
                            <strong><i class="fa fa-1x fa-money"></i></strong>
                            Payment
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">Amount: </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="amount" Text="100" ReadOnly="true" runat="server" />
                    </div>
                    <%--<asp:TextBox ID="firstname" runat="server" />--%>
                    <div class="col-md-2">Email: </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="email" runat="server" />
                    </div>
                    <div class="col-md-2">Phone: </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="phone" runat="server" />
                    </div>
                </div>
                <input type="hidden" runat="server" id="key" name="key" />
                <input type="hidden" runat="server" id="hash" name="hash" />
                <input type="hidden" runat="server" id="txnid" name="txnid" />
                <input type="hidden" runat="server" id="enforce_paymethod" name="enforce_paymethod" />
                <div class="row" style="display: none;">
                    <div>Product Info: </div>
                    <div>
                        <asp:TextBox ID="productinfo" runat="server" Text="Candidate Registration" />
                    </div>
                    <div>Success URI: </div>
                    <div>
                        <asp:TextBox ID="surl" runat="server" Text="~/Success.aspx" />
                    </div>
                    <div>Failure URI: </div>
                    <div>
                        <asp:TextBox ID="furl" runat="server" Text="~/Success.aspx" />
                    </div>
                    <div>Service Provider: </div>

                    <div>
                        <asp:TextBox ID="service_provider" runat="server" Text="payu_paisa" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button Text="Proceed to payment" CssClass="btn btn-primary" runat="server" ID="btnSubmitData" OnClick="btnSubmitData_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="loader"></div>

    <script type="text/javascript">
        function onlyAlphabets(e, t) {

            try {

                if (window.event) {

                    var charCode = window.event.keyCode;

                }

                else if (e) {

                    var charCode = e.which;

                }

                else { return true; }

                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode == 32)

                    return true;

                else

                    return false;

            }

            catch (err) {

                alert(err.Description);

            }

        }

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        //$(function () {

        //    $('#MainContent_txt10TotalMarks').bind('onkeypress', function () {
        //        calculate();
        //    });
        //    $('#MainContent_txt10MarksObtained').on('onkeypress', function () {
        //        calculate();
        //    });
        //    function calculate() {
        //        var pPos = parseInt($('#MainContent_txt10TotalMarks').val());
        //        var pEarned = parseInt($('#MainContent_txt10MarksObtained').val());
        //        var perc = "";
        //        if (isNaN(pPos) || isNaN(pEarned)) {
        //            perc = " ";
        //        } else {
        //            perc = ((pEarned / pPos) * 100).toFixed(3);
        //        }

        //        $('#MainContent_txt10Percentage').val(perc);
        //    }

        //});
    </script>
</asp:Content>
