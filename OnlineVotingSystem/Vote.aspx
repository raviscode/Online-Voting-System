<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="OnlineVotingSystem.Vote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div style="text-align:right">
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx"  Font-Size="Medium" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx"  Font-Size="Medium" ForeColor="#cc3300">HOME</asp:HyperLink>
        </div>
    <div style="text-align:left ">
    <h2>VOTE HERE!!</h2>
        </div>
     <hr />
    <div>
        <h4>Click the vote button to vote your faverate candidate</h4>
        <h4>Your vote is precious and make sure you are selecting independently without any external pressure..</h4>
        </div>
    <br /><br /><br />
    <div style="text-align:center" >
                <asp:Label ID="lblCandidateName" runat="server"  ></asp:Label><br />
                <asp:Button CssClass="btn btn-lg btn-warning" ID="btnVote" runat="server" Text="Vote" onclick="btnVote_Click" />
                <asp:Label ID="lblVoteStatus" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
