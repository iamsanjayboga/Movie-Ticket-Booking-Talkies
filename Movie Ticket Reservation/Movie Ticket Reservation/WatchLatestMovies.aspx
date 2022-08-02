<%@ Page Title="Latest Movies" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WatchLatestMovies.aspx.cs" Inherits="Movie_Ticket_Reservation.WatchLatestMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .button {
          background-color: black; /* Green */
          border: none;
          color: white;
          padding: 10px 24px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          border-radius: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--<asp:Table ID="Table1" runat="server"></asp:Table>--%>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>


    <div id="mainContainer" class="container">
        <div class="shadowBox">
            <div class="page-container">
                <div class="container">
                    <div class="jumbotron">
                        <h2>
                            <asp:Label ID="moviename" runat="server"  Text="Movie : "></asp:Label>
                        </h2>
                        <h4>
                            <asp:Label ID="description" runat="server" Text="Description : "></asp:Label>
                        </h4>
                        <div class="row">
                            <div class="col-lg-4">
                                <asp:Label ID="language" runat="server" Text="Language : "></asp:Label>
                            </div>
                            <div class="col-lg-4">
                                <asp:Label ID="Release_Date" runat="server" Text="Release Date : "></asp:Label>
                            </div>
                            <div class="col-lg-4">
                                <asp:Label ID="Director" runat="server" Text="Director : "></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <asp:Label ID="Genre" runat="server" Text="Genre : "></asp:Label>
                            </div>
                            <div class="col-lg-4">
                                <asp:Label ID="Actor" runat="server" Text="Actor : "></asp:Label>
                            </div>
                            <div class="col-lg-4">
                                <asp:Label ID="Stars" runat="server" Text="Rating : "></asp:Label>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-lg-5"></div>
                            <div class="col-lg-6">
                                <asp:Button ID="Button1" CssClass="button" runat="server" Text="Book Now!!" OnClick="bookmovie"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="table-responsive">
                                <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
                                    <Columns>
                                        <%--<asp:HyperLinkField DataTextField="MOVIEID" HeaderText="MOVIEID" ControlStyle-BackColor="Gold" ControlStyle-Font-Bold="true" ControlStyle-BorderStyle="Groove" />--%>
                                        <%--<asp:TemplateField HeaderText="MOVIEID" SortExpression="MOVEID">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LbPath" runat="server"
                                                    Text='<%# Eval("MOVIEID") %>'
                                                    CommandName="FETCH"
                                                    CommandArgument='<%#Bind("MOVIEID") %>'>
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                        <asp:BoundField DataField="MOVIEID" HeaderText="MOVIE ID" />
                                        <asp:BoundField DataField="TITLE" HeaderText="TITLE" />
                                        <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" />
                                        <asp:BoundField DataField="LANGUAGE" HeaderText="LANGUAGE" />
                                        <asp:BoundField DataField="RELEASE_DATE" HeaderText="RELEASE_DATE" />
                                        <asp:BoundField DataField="DIRECTOR" HeaderText="DIRECTOR" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:HyperLink runat="server" Text='View' HeaderText="More Info" CssClass="badge bg-primary"
                                                    NavigateUrl='<%# "~/WatchLatestMovies.aspx?MovieId=" + Eval("MOVIEID") %>' ></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
