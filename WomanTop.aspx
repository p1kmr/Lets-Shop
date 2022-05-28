﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="WomanTop.aspx.cs" Inherits="WebApplication2.WomanTop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Woman Top</title>
<link href="css/Custome.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
  <h2>Woman's Top</h2>  

    <div class="panel panel-primary">
      <div class="panel-heading">Shirts</div>
      <div class="panel-body">
      <asp:repeater ID="rptrProducts" runat="server">
           <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          <div class="thumbnail">              
              <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
              <div class="caption"> 
                   <div class="probrand"><%# Eval ("BrandName") %>  </div>
                   <div class="proName"> <%# Eval ("PName") %> </div>
                   <div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %> off) </span></div> 
                   
              </div>
          </div>
                </a>
        </div>
               
               </ItemTemplate>
       </asp:repeater>
      
      </div>
      <div class="panel-footer">
      </div>
    </div>
    
</div>
</asp:Content>

