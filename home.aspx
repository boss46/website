<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <style type="text/css">
        .abcd {
            border-style: groove;
            border-radius: 05%;
        }
    </style>

    <div class="container">
        <img src="images/wbd.jpg" class="img-responsive" />
    </div>
    <div class="jumbotron">
        <img src="images/blood1.png" width="200" />
        <ul>
            <li>Every year our nation requires about <strong>5 Crore  units</strong> of blood,
                     out of which only a meager <strong>2.5 Crore units</strong> of blood are available.</li>
            <li>The <strong>gift of blSood</strong> is the 
                    <strong>gift  of life</strong>. There is no substitute for human blood.</li>
            <li>Every two seconds someone  needs blood.</li>
            <li>More than 38,000 blood donations are needed every day.</li>
            <li>A total of 30 million blood components are transfused each year.</li>
            <li>The average red blood cell transfusion is approximately 3 pints.</li>
            <li>The blood type most often requested by hospitals is Type O.</li>
            <li>Sickle cell patients can require  frequent blood transfusions throughout their lives.</li>
            <li>More than 1 million new people are diagnosed with cancer each year.  Many of them will need blood, sometimes daily, during their  chemotherapy treatment.</li>
            <li>A single car accident victim can require as many as 100 units of blood</li>
        </ul>

        <p>
            <a class="btn btn-lg btn-primary" href="#" role="button">Register as donar &raquo;</a>
        </p>
    </div>

    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3">
        <div class="abcd">
            <a href="blood_tips.aspx">
                <img src="../images/blood.png" class="img-responsive" />
            </a>
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success btn-block">why to donate blood</asp:LinkButton>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3">
        <div class="abcd">
            <a href="blood_tips.aspx">
                <img src="images/donars.jpg" class="img-responsive" />
            </a>
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-success btn-block">Who can donate blood</asp:LinkButton>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3">
        <div class="abcd">
            <a href="registration.aspx">
                <img src="images/bloodman.png" class="img-responsive" />
            </a>
            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-success btn-block">become a donor</asp:LinkButton>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3">
        <div class="abcd">
            <a href="blood_tips.aspx">
                <img src="../images/healty.png" class="img-responsive" />
            </a>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success btn-block">Donation process</asp:LinkButton>
        </div>
    </div>
    <section class="col-lg-6 col-md-6 col-xs-12 col-sm-6 pull-left">
        <div class="embed-responsive embed-responsive-16by9">
            <video src="video/Surprising%20Facts%20About%20Blood%20Donation%20-%20YouTube.MP4" controls="controls" />
        </div>
    </section>
    <section class="col-lg-6 col-md-6 col-xs-12 col-sm-6 pull-right">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/5jWKpTnKHJw?rel=0"></iframe>
        </div>
    </section>
    <section class="col-lg-6 col-md-6 col-xs-12 col-sm-6 pull-left">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/rolXvtMg7CI?rel=0&amp;showinfo=0&amp;start=9" ></iframe>

        </div>
    </section>
    <section class="col-lg-6 col-md-6 col-xs-12 col-sm-6 pull-right">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/5jWKpTnKHJw?rel=0"></iframe>
        </div>
    </section>
    <asp:Label ID="lbldays" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>

</asp:Content>

