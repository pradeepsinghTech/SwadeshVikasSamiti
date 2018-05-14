using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class CandidateRegistration_Home : System.Web.UI.Page
    {
        public string action1 = string.Empty;
        public string hash1 = string.Empty;
        public string txnid1 = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            key.Value = ConfigurationManager.AppSettings["MERCHANT_KEY"];
            if (!IsPostBack)
            {
                frmError.Visible = false;
                if (string.IsNullOrEmpty(hash.Value))
                {
                    btnSubmitData.Visible = true;
                }
                else
                {
                    btnSubmitData.Visible = false;
                }
                FillDistrict();
            }
        }
        private void FillDistrict()
        {
            DataTable dt = new Utilities().getDistrictNames();
            ddlDistrict.DataSource = dt;
            ddlDIsrictCorr.DataSource = dt;
            DataRow dr = dt.NewRow();
            dr["District_Name"] = "----Select----";
            dr["District_Id"] = "0";
            dt.Rows.InsertAt(dr, 0);
            ddlDIsrictCorr.DataTextField = "District_Name";
            ddlDIsrictCorr.DataValueField = "District_Id";
            ddlDistrict.DataTextField = "District_Name";
            ddlDistrict.DataValueField = "District_Id";
            ddlDistrict.DataBind();
            ddlDIsrictCorr.DataBind();
        }


        protected void btnUpload1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".jpeg")
                {
                    Response.Write("<script type='text/javascript'>alert('Please Select a .jpg or .jpeg File !');</script>");

                }
                else
                {
                    string photoFileName = System.DateTime.Now.ToString("ddMMyyhhmmss") + FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + photoFileName));
                    Session["photoFileName"] = photoFileName;
                    Response.Write("<script type='text/javascript'>alert('Photo Uploaded Successfully!');</script>");

                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Please Select a File to Upload!');</script>");
            }
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".jpeg")
                {
                    Response.Write("<script type='text/javascript'>alert('Please Select a .jpg or .jpeg File !');</script>");

                }
                else
                {
                    string signFileName = System.DateTime.Now.ToString("ddMMyyhhmmss") + FileUpload2.FileName;
                    FileUpload2.SaveAs(Server.MapPath("~/Uploads/" + signFileName));
                    Session["SignFileName"] = signFileName;
                    Response.Write("<script type='text/javascript'>alert('Signature Uploaded Successfully!');</script>");
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Please Select a File to Upload!');</script>");
            }
        }

        protected void btnSubmitData_Click(object sender, EventArgs e)
        {
            #region VALidation
            if (txtApplicantName.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter your name!');</script>");
                txtApplicantName.Focus();
                return;
            }
            else if (txtFathersName.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter father name!');</script>");
                txtApplicantName.Focus();
                return;


            }
            else if (txtMothersName.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter mothers name!');</script>");
                txtMothersName.Focus();
                return;

            }
            else if (txtDOB.Value == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please select Date of birth!');</script>");
                txtDOB.Focus();
                return;

            }
            else if (txtUIDNumber.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter UID Number!');</script>");
                txtUIDNumber.Focus();
                return;


            }
            else if (txt10Schoolname.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter 10 School name!');</script>");
                txt10Schoolname.Focus();
                return;

            }
            else if (txt10thBoard.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter 10 Board ie. U.p Board/CBSE!');</script>");
                txt10thBoard.Focus();
                return;

            }
            else if (txt10RollNo.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please Enter Roll No');</script>");
                txt10thBoard.Focus();
                return;

            }
            else if (txt10YoP.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter year of passing for 10!');</script>");
                txt10YoP.Focus();
                return;

            }
            else if (txt10TotalMarks.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Total marks fro 10!');</script>");
                txt10TotalMarks.Focus();
                return;

            }
            else if (txt10MarksObtained.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter marks obtained for 10!');</script>");
                txt10MarksObtained.Focus();
                return;

            }
            else if (txt10Percentage.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter percentage for 10!');</script>");
                txt10Percentage.Focus();
                return;

            }
            else if (txt12Schoolname.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter 12 School name!');</script>");
                txt10Schoolname.Focus();
                return;

            }
            else if (txt12thBoard.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please enter 12 Board ie. U.p Board/CBSE!');</script>");
                txt10thBoard.Focus();
                return;

            }
            else if (txt12RollNo.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Please Enter Roll No');</script>");
                txt10thBoard.Focus();
                return;

            }
            else if (txt12YoP.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 Year of Passing!');</script>");
                txt12YoP.Focus();
                return;


            }
            else if (txt12TotalMarks.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 total marks!');</script>");
                txt12TotalMarks.Focus();
                return;

            }
            else if (txt12MarksObtained.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 marks obtained!');</script>");
                txt12MarksObtained.Focus();
                return;

            }
            else if (txt12Percentage.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter 12 percentage!');</script>");
                txt12Percentage.Focus();
                return;

            }
            else if (txtAddressCorr.Text.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Correspondence Address!');</script>");
                txtAddressCorr.Focus();
                return;

            }
            else if (txtPinCorr.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter pin code!');</script>");
                txtPinCorr.Focus();
                return;

            }
            else if (ddlDIsrictCorr.SelectedValue == "0")
            {
                Response.Write("<script type='text/javascript'>alert('select District Name!');</script>");
                ddlDIsrictCorr.Focus();
                return;

            }
            else if (txtAddress_per.Text.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Permanent Address!');</script>");
                txtAddress_per.Focus();
                return;

            }
            else if (txtPin_Per.Value.Trim() == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Pin Code for permanent address!');</script>");
                txtPin_Per.Focus();
                return;

            }
            else if (ddlDIsrictCorr.SelectedValue == "0")
            {
                Response.Write("<script type='text/javascript'>alert('select District!');</script>");
                ddlDIsrictCorr.Focus();
                return;

            }
            else if (Session["photoFileName"] == null)
            {
                Response.Write("<script type='text/javascript'>alert('Upload Photograph!');</script>");
                FileUpload1.Focus();
                return;
            }
            else if (Session["SignFileName"] == null)
            {
                Response.Write("<script type='text/javascript'>alert('Upload Signature!');</script>");
                FileUpload2.Focus();
                return;

            }
            else if (email.Text == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Email ID!');</script>");
                email.Focus();
                return;
            }
            else if (phone.Text == string.Empty)
            {
                Response.Write("<script type='text/javascript'>alert('Enter Phone Number!');</script>");
                phone.Focus();
                return;
            }
            #endregion
            UserRegistration user = new UserRegistration();
            user.Name = txtApplicantName.Value;
            user.FatherName = txtFathersName.Value;
            user.MothersName = txtMothersName.Value;
            user.DOB = txtDOB.Value;
            user.UID_No = txtUIDNumber.Value;
            user.school_Name_HSS = txt10Schoolname.Value;
            user.Board_Name_HSS = txt10thBoard.Value;
            user.Roll_No_HSS = txt10RollNo.Value;
            user.YOP_HSS = txt10YoP.Value;
            user.Total_Marks_HSS = txt10TotalMarks.Value;
            user.Marks_Obtained_HSS = txt10MarksObtained.Value;
            user.Marks_Perc_HSS = txt10Percentage.Value;
            user.school_Name_SSC = txt12Schoolname.Value;
            user.Board_Name_SSC = txt12thBoard.Value;
            user.Roll_No_SSC = txt12RollNo.Value;
            user.YOP_SSC = txt12YoP.Value;
            user.Total_Marks_SSC = txt12TotalMarks.Value;
            user.Marks_Obtained_SSC = txt12MarksObtained.Value;
            user.Marks_Per_SSC = txt12Percentage.Value;
            user.AddressPermanent = txtAddress_per.Text;
            user.PinCodePermanent = txtPin_Per.Value;
            user.DistrictPermanent = ddlDistrict.SelectedValue;
            user.StatePermanent = ddlState.SelectedValue;
            user.AddressCorrespondence = txtAddressCorr.Text;
            user.PinCodeCorrespondence = txtPinCorr.Value;
            user.DistrictCorrespondence = ddlDIsrictCorr.SelectedValue;
            user.StateCorrespondence = ddlState.SelectedValue;
            user.PictureName = Session["photoFileName"].ToString();
            user.Signature = Session["SignFileName"].ToString();
            int CandidateId = 0;
            if (new Utilities().submitUserData(user, ref CandidateId))
            {
                doPayment(user);
                string RegistrationNumber = DateTime.Now.Year + "/" + DateTime.Now.Month + "/" + DateTime.Now.Day + "/" + CandidateId;
                // Response.Write("<script type='text/javascript'>alert('Candidate Registered With Registration Number " + RegistrationNumber + "');</script>");

            }


        }

        public string Generatehash512(string text)
        {

            byte[] message = Encoding.UTF8.GetBytes(text);

            UnicodeEncoding UE = new UnicodeEncoding();
            byte[] hashValue;
            SHA512Managed hashString = new SHA512Managed();
            string hex = "";
            hashValue = hashString.ComputeHash(message);
            foreach (byte x in hashValue)
            {
                hex += String.Format("{0:x2}", x);
            }
            return hex;

        }
        protected void doPayment(UserRegistration user)
        {
            try
            {

                string[] hashVarsSeq;
                string hash_string = string.Empty;


                if (string.IsNullOrEmpty(txnid.Value)) // generating txnid
                {
                    Random rnd = new Random();
                    string strHash = Generatehash512(rnd.ToString() + DateTime.Now);
                    txnid1 = strHash.ToString().Substring(0, 20);

                }
                else
                {
                    txnid1 = txnid.Value;
                }
                if (string.IsNullOrEmpty(hash.Value)) // generating hash value
                {
                    if (
                        string.IsNullOrEmpty(ConfigurationManager.AppSettings["MERCHANT_KEY"]) ||
                        string.IsNullOrEmpty(txnid1) ||
                        string.IsNullOrEmpty(amount.Text) ||
                        string.IsNullOrEmpty(user.Name) ||
                        string.IsNullOrEmpty(email.Text) ||
                        string.IsNullOrEmpty(phone.Text) ||
                        string.IsNullOrEmpty(productinfo.Text) ||
                        string.IsNullOrEmpty(surl.Text) ||
                        string.IsNullOrEmpty(furl.Text) ||
                        string.IsNullOrEmpty(service_provider.Text)
                        )
                    {
                        //error

                        frmError.Visible = true;
                        return;
                    }

                    else
                    {
                        frmError.Visible = false;
                        hashVarsSeq = ConfigurationManager.AppSettings["hashSequence"].Split('|'); // spliting hash sequence from config
                        hash_string = "";
                        foreach (string hash_var in hashVarsSeq)
                        {
                            if (hash_var == "key")
                            {
                                hash_string = hash_string + ConfigurationManager.AppSettings["MERCHANT_KEY"];
                                hash_string = hash_string + '|';
                            }

                            else if (hash_var == "txnid")
                            {
                                hash_string = hash_string + txnid1;
                                hash_string = hash_string + '|';
                            }
                            else if (hash_var == "amount")
                            {
                                hash_string = hash_string + Convert.ToDecimal(amount.Text).ToString("g29");
                                hash_string = hash_string + '|';
                            }
                            else if (hash_var == "productinfo")
                            {
                                hash_string = hash_string + productinfo.Text;
                                hash_string = hash_string + '|';
                            }
                            else if (hash_var == "firstname")
                            {
                                hash_string = hash_string + user.Name;
                                hash_string = hash_string + '|';
                            }
                            else if (hash_var == "email")
                            {
                                hash_string = hash_string + email.Text;
                                hash_string = hash_string + '|';
                            }
                            else
                            {
                                hash_string = hash_string + (Request.Form[hash_var] != null ? Request.Form[hash_var] : "");// isset if else
                                hash_string = hash_string + '|';
                            }
                        }
                        hash_string += ConfigurationManager.AppSettings["SALT"];// appending SALT
                        hash1 = Generatehash512(hash_string).ToLower();         //generating hash
                        action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "/_payment";// setting URL
                    }
                }
                else if (!string.IsNullOrEmpty(hash.Value))
                {
                    hash1 = hash.Value;
                    action1 = ConfigurationManager.AppSettings["PAYU_BASE_URL"] + "/_payment";
                }
                if (!string.IsNullOrEmpty(hash1))
                {
                    hash.Value = hash1;
                    txnid.Value = txnid1;
                    System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
                    data.Add("hash", hash.Value);
                    data.Add("txnid", txnid.Value);
                    data.Add("key", key.Value);
                    string AmountForm = Convert.ToDecimal(amount.Text.Trim()).ToString("g29");// eliminating trailing zeros
                    amount.Text = AmountForm;
                    data.Add("amount", AmountForm);
                    data.Add("firstname", user.Name.Trim());
                    data.Add("email", email.Text.Trim());
                    data.Add("phone", phone.Text.Trim());
                    data.Add("productinfo", productinfo.Text.Trim());
                    data.Add("surl", surl.Text.Trim());
                    data.Add("furl", furl.Text.Trim());
                    data.Add("service_provider", service_provider.Text.Trim());
                    string strForm = PreparePOSTForm(action1, data);
                    Page.Controls.Add(new LiteralControl(strForm));

                }

                else
                {
                    //no hash

                }

            }

            catch (Exception ex)

            {
                Response.Write("<span style='color:red'>" + ex.Message + "</span>");

            }



        }
        private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
        {
            //Set a name for the form
            string formID = "PostForm";
            //Build the form using the specified data to be posted.
            StringBuilder strForm = new StringBuilder();
            strForm.Append("<form id=\"" + formID + "\" name=\"" +
                           formID + "\" action=\"" + url +
                           "\" method=\"POST\">");

            foreach (System.Collections.DictionaryEntry key in data)
            {

                strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                               "\" value=\"" + key.Value + "\">");
            }


            strForm.Append("</form>");
            //Build the JavaScript which will do the Posting operation.
            StringBuilder strScript = new StringBuilder();
            strScript.Append("<script language='javascript'>");
            strScript.Append("var v" + formID + " = document." +
                             formID + ";");
            strScript.Append("v" + formID + ".submit();");
            strScript.Append("</script>");
            //Return the form and the script concatenated.
            //(The order is important, Form then JavaScript)
            return strForm.ToString() + strScript.ToString();
        }



    }
}
