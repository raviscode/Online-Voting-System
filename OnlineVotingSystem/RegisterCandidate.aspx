<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="RegisterCandidate.aspx.cs" Inherits="OnlineVotingSystem.RegisterCandidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:right">
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx"  Font-Size="Medium" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx"  Font-Size="Medium" ForeColor="#cc3300">HOME</asp:HyperLink>
        </div>
    <div style="text-align:left ">
    <h1 class="text-center login-title">Enter Candidate Detilas</h1>
        </div>
    <hr />
    <div class="row">
     <div class="col-lg-12">
            <div class="account-wall">
                <asp:TextBox ID="txtCandidateName" runat="server" class="form-control" placeholder="Candidate Name" required autofocus></asp:TextBox>
                 <asp:TextBox ID="txtAge" runat="server" class="form-control" placeholder="Age" required></asp:TextBox>
                <asp:TextBox ID="txtEmployment" runat="server" class="form-control" placeholder="Employment" required autofocus></asp:TextBox>
                 <asp:TextBox ID="txtAnualIncome" runat="server" class="form-control" placeholder="Anual Income" required></asp:TextBox>
                <asp:TextBox ID="txtParty" runat="server" class="form-control" placeholder="Party" required autofocus></asp:TextBox>
                 <asp:TextBox ID="txtArea" runat="server" class="form-control" placeholder="Area" required></asp:TextBox>
                <asp:Button ID="btnSubmit" class="btn btn-md btn-warning btn-block" runat="server" OnClick="btnSubmit_Click" Text="Register" />
                <asp:Button ID="btnClear" class="btn btn-md btn-warning btn-block" runat="server" OnClick="btnClear_Click" Text="Clear" />
            </div>
            </div>
     </div>

</asp:Content>
