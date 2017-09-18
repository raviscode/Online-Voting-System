<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OnlineVotingSystem.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="text-align:right">
     <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/LoginPage.aspx" Font-Italic="true"  Font-Size="X-Large" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        </div>
    <div style="text-align:left ">
    <h2>Welcome to Electrocic Voting Machine Management</h2>
        </div>
     <hr />
    <div style="text-align:left">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterCandidate.aspx" Font-Italic="true"  Font-Size="X-Large" ForeColor="#cc3300">Add Candidate</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Result.aspx" Font-Italic="true" Font-Size="X-Large" ForeColor="#cc3300">View Result</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RegisterUser.aspx" Font-Italic="true" Font-Size="X-Large" ForeColor="#cc3300">Add Voter</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CandidatesRecord.aspx" Font-Italic="true"  Font-Size="X-Large" ForeColor="#cc3300">Candidate Details</asp:HyperLink>
</div>
</asp:Content>
