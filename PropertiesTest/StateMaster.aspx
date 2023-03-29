<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StateMaster.aspx.cs" Inherits="PropertiesTest.StateMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- START row-->
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h3>State Master
               <small></small>
            </h3>
            <div class="row">
                <div class="col-sm-06">
                    <!-- START panel-->
                    <div class="panel panel-default">
                        <div class="panel-heading">State Master</div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">State</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="Enter State Name"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" Text="Submit" class="btn btn-sm btn-default" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END panel-->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <!-- START panel-->
                    <div class="panel panel-default">
                        <div class="panel-heading">State List</div>
                        <div class="panel-body">
                            <!-- START table-responsive-->
                            <div class="table-responsive">
                                <asp:GridView ID="gvState" CssClass="table" runat="server" AutoGenerateColumns="false" DataKeyNames="StateId"
                                    PageSize="10" AllowPaging="true" OnRowEditing="gvState_RowEditing" OnRowUpdating="gvState_RowUpdating"
                                    OnRowCancelingEdit="gvState_RowCancelingEdit" OnRowDeleting="gvState_RowDeleting" OnRowCommand="gvState_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="StateId" HeaderText="State Id" />
                                        <asp:BoundField DataField="StateName" HeaderText="State Name" />
                                        <asp:TemplateField HeaderText="Add City">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="lnkView" CommandArgument='<%#Eval("StateId") %>'
                                                    CommandName="ADD">Add</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:CommandField ShowDeleteButton="true" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END row-->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
