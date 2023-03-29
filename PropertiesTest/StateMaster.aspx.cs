using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesTest
{
    public partial class StateMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DBML.EntityCRUDMasterDataContext _objDataContext = new DBML.EntityCRUDMasterDataContext();
            try
            {
                int intStateId = 0;
                string stStateCode = "";
                string stStateName = txtstate.Text;
                string stAction = "INSERT";
                bool blStatus = true;
                _objDataContext.CRUD_StateMaster(intStateId, stStateName, stStateCode, stAction,blStatus);
                txtstate.Text = "";
                LoadGrid();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void LoadGrid()
        {           
            using (DBML.EntityCRUDMasterDataContext context = new DBML.EntityCRUDMasterDataContext())
            {
                var states = from state in context.EntityStateMasters                          
                             where state.Status == true                              
                select state;
                gvState.DataSource = states;
                gvState.DataBind();
            }
        }



        protected void gvState_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvState.EditIndex = e.NewEditIndex;
            LoadGrid();
        }
        protected void gvState_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int stateID = Convert.ToInt32(gvState.DataKeys[e.RowIndex].Values[0]);           
            GridViewRow row = (GridViewRow)gvState.Rows[e.RowIndex];
            TextBox txtStateName = (TextBox)row.Cells[1].Controls[0];
            using (DBML.EntityCRUDMasterDataContext context = new DBML.EntityCRUDMasterDataContext())
            {             
                string stStateCode = "";               
                string stAction = "UPDATE";
                bool blStatus = true;
                context.CRUD_StateMaster(stateID, txtStateName.Text, stStateCode, stAction, blStatus);
                context.SubmitChanges();               
            }
            gvState.EditIndex = -1;
            LoadGrid();
        }

        protected void gvState_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvState.EditIndex = -1;
            LoadGrid();
        }

        protected void gvState_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int stateID = Convert.ToInt32(gvState.DataKeys[e.RowIndex].Values[0]);
            string strStateName="";
            using (DBML.EntityCRUDMasterDataContext context = new DBML.EntityCRUDMasterDataContext())
            {
                string stStateCode = "";
                string stAction = "DELETE";
                bool blStatus = false;
                context.CRUD_StateMaster(stateID, strStateName , stStateCode, stAction, blStatus);
                context.SubmitChanges();
            }
            gvState.EditIndex = -1;
            LoadGrid();
        }

        protected void gvState_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ADD")
            {
                LinkButton lnkView = (LinkButton)e.CommandSource;
                string stateId = lnkView.CommandArgument;
                Response.Redirect("CityMaster.aspx?StateID=" + stateId); 
            }
        }
    }
}