<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ACLTestProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ACL Number Validator Example</h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Number Translator</h2>
            <p>
                <asp:ValidationSummary ID="NumberBoxValidationSummary" runat="server" />
                </p><p>

                <asp:TextBox ID="NumberBox" runat="server" CausesValidation="True"></asp:TextBox>

                    </p> 
            <p>
                <asp:RegularExpressionValidator ID="NumberBoxRegularExpressionValidator" runat="server" ErrorMessage="Error found, please enter a number." validationexpression="^[0-9]*" ControlToValidate="NumberBox"></asp:RegularExpressionValidator>
                
            </p>
            <p><asp:Label ID="NumberBoxLabel" runat="server" Text=@NumberBoxTranslatedString></asp:Label></p>
        </div>
    </div>

</asp:Content>
