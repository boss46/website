<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blood_tips.aspx.cs" Inherits="blood_tips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
     <div class="container">
            <div class="panel-group" id="accordion">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle" href="#collapse1" data-toggle="collapse" data-parent="accordion">BLOOD GROUP</a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse in">
                        <div class="panel-body">
                             <p>Blood type is determined by which antibodies and antigens the person's blood produces.
                                  An individual has two types of blood groups namely ABO-grouping and Rh-grouping.
                                    Rh is called as the Rhesus factor that has come to us from Rhesus monkeys.</p>
        <p> humans are in the ABO blood group. The ABO group has four categories namely 
                1) A group 2) B group 3) O group and 4) AB group
                    In the Rh- group, either the individual is said to be Rh- Negative or Rh- Positive.</p>
        <p>
            Thus blood group of any human being will mainly fall in any one of the following groups. <br />
                A positive or A negative<br /> 
                B positive or B negative <br />
                O positive or O negative <br />
                AB positive or AB negative. <br />
        </p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle" href="#collapse2" data-toggle="collapse" data-parent="accordion">UNIVERSAL donarS AND RECIPENTS</a>
                        </h4>
                    </div>
                    <div id="collapse2" class="panel-collapse collapse">
                        <div class="panel-body">
                             <p>
                The most common blood type is O, followed by type A. <br />

                 Type O individuals are often called "universal donars" since their blood can be transfused into persons with any blood type.<br />
                 Those with type AB blood are called "universal recipients" because they can receive blood of any type.<br />
                 However, since approximately twice as many people in the general population have O and A blood types, <br />
                 blood bank's need for this type of blood increases exponentially.
            </p>
        
            <p>
                DO donate blood, only if you satisfy all of the following conditions</p>
                <ul>
             <li> You are between age group of 18-60 years.</li>
                <li>Your weight is 45 kgs or more.</li>
                <li>Your hemoglobin is 12.5 gm% minimum.</li>
                <li>Your last blood donation was 3 or more months earlier.</li>
                <li>You are healthy and have not suffered from malaria, typhoid or other transmissible disease in the recent past.</li>
                    </ul>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="accordion-toggle" href="#collapse3" data-toggle="collapse" data-parent="accordion">DO NOT donate blood, if you have any of the following conditions</a>
                        </h4>
                    </div>
                    <div id="collapse3" class="panel-collapse collapse">
                        <div class="panel-body">
                       <ul>
                       <li> Cold / fever in the past 1 week.</li>

                       <li> Under treatment with antibiotics or any other medication.</li>
                       <li> Cardiac problems, hypertension, epilepsy, diabetes (on insulin therapy), 
                            history of cancer, chronic kidney or liver disease, bleeding tendencies, venereal disease etc.</li>
                       <li> Major surgery in the last 6 months.</li>
                        <li>Vaccination in the last 24 hours.</li>
                        <li>Had a miscarriage in the last 6 months or have been pregnant / lactating in the last one year.</li>
                        <li>Had fainting attacks during last donation.</li>
                        <li> regularly received treatment with blood products.</li>
                       <li> Shared a needle to inject drugs/ have history of drug addiction. </li>
                       <li> Had sexual relations with different partners or with a high risk individual.</li>
                       <li> Been tested positive for antibodies to HIV.</li>
                        </ul>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse4" data-toggle="collapse" data-parent="accordion">A Healthy donar</a>
                        </h4>
                    </div>
                    <div id="collapse4" class="panel-collapse collapse">
                        <div class="panel-body">
                            A healthy diet helps ensure a successful blood donation, and also makes you feel better! <br />
                              Check out the following recommended foods to eat prior to your donation.

                            *Low fat foods

                            *Iron rich foods
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse5" data-toggle="collapse" data-parent="accordion">Blood Bank</a>
                        </h4>
                    </div>
                    <div id="collapse5" class="panel-collapse collapse">
                        <div class="panel-body">
                            A blood bank is a place designed especially for the storage of blood and blood products.<br />
                             Large coolers hold these products at a constant temperature and they are available at a moment's notice.
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse6" data-toggle="collapse" data-parent="accordion">Blood donation</a>
                        </h4>
                    </div>
                    <div id="collapse6" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>Donating blood is a life saving measure especially when you have a rare blood type.<br />
                             Blood donation is safe and simple. It takes only about 10 minutes to donate blood - less 
                                Sthan the time of an average telephone call.<br />
                             We can save upto 3 to 4 precious lives by donating blood.</p>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse7" data-toggle="collapse" data-parent="accordion">World Blood donar Day</a>
                        </h4>
                    </div>
                    <div id="collapse7" class="panel-collapse collapse">
                        <div class="panel-body">
                            The day is celebrated to raise awareness globally about the need for regular and voluntary blood donation.
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>

