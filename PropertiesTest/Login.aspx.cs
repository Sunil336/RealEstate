using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                LogIn();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public void reset()
        {
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtEmail.Focus();

        }
        public void LogIn()
        {
          
            DBML.EntityUserMasterDataContext _objAdminLogin = new DBML.EntityUserMasterDataContext();
            List<DBML.loginUserResult> _objlist;           

            try
            {
                string _strUserName = txtEmail.Text.Trim().Replace("'", "''");
                string _strPassword = txtPassword.Text.Trim().Replace("'", "''");
                string _strWhereCondition = "stUserName= '" + _strUserName + "' And stPassword='" + _strPassword + "'";
                _objlist = _objAdminLogin.loginUser(_strUserName,_strPassword).ToList();

                if (_objlist != null)
                    if (_objlist.Count > 0)
                    {
                        Session["UserName"] = _objlist[0].UserName;
                        Session["inEntityId"] = _objlist[0].Id;
                        Response.Redirect("DashBoard.aspx");
                    }
                    else
                    {
                        //    Common.showAsyncMsg("Incorrect UserId Or Password", this.Page);
                        txtPassword.Text = string.Empty;
                        txtEmail.Focus();
                    }
            }
            catch (Exception EX)
            {

                throw EX;
            }



        }
    }
}