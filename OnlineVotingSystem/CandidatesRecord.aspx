<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineVoting.Master" AutoEventWireup="true" CodeBehind="CandidatesRecord.aspx.cs" Inherits="OnlineVotingSystem.CandidatesRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="text-align:right">
 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx" Font-Italic="true"  Font-Size="X-Large" ForeColor="#cc3300">LOGOUT</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx" Font-Italic="true"  Font-Size="X-Large" ForeColor="#cc3300">HOME</asp:HyperLink>
        </div>
    <div style="text-align:left ">
            <h1 class="text-center login-title">Candidates Record</h1>
        </div>
    <hr />
    <div id="gvCandidateDetails">
        <asp:GridView ID="gvCandidate" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" EnableModelValidation="True" ForeColor="#cc3300" GridLines="None">
            <AlternatingRowStyle BackColor="White" Height="50px" />
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="ID" />
                <%--<asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="Name" Text='<%# Eval("Name") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:BoundField HeaderText="Name" DataField="Name" />
                <asp:BoundField HeaderText="Age" DataField="Age" />
                <asp:BoundField HeaderText="Employment " DataField="Employment" />
                <asp:BoundField HeaderText="AnnualIncome" DataField="AnnualIncome" />
                <asp:BoundField HeaderText="Party" DataField="Party" />
                <asp:BoundField HeaderText="Area" DataField="Area" />
            </Columns>
            <EditRowStyle BackColor="#cc3300" />
            <FooterStyle BackColor="#cc3300" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#cc3300" Font-Bold="True" ForeColor="White" Height="60px" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" Height="50px" HorizontalAlign="Left"/>
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <br />
    
    </div>
</asp:Content>
