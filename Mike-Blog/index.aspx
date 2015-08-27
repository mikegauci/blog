<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Mike_Blog.index" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="This is my first responsive blog using Twitter Bootstrap">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>Mike Gauci's First Blog</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog.css" rel="stylesheet">

    <!-- Google Font -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700' rel='stylesheet' type='text/css'>

    <link href='https://fonts.googleapis.com/css?family=Comfortaa:400,300,700' rel='stylesheet' type='text/css'>

    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

<!-- Static navbar -->
    <nav class="navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"><strong>M</strong>ike&nbsp;<strong>G</strong>auci</a>
        </div>
        <div id="navbar" class="navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li id="active-home"><a href="index.aspx" style="background: #dbdbdb;">Home</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="portfolio.html">Portfolio</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<div id="blog-page-background">
        <div class="container">

          <div class="row">
            
            <div class="col-med-3  blog-main">

              <div id="about-main">
              <div id="about-index">
                 <img src="images/mike2.png" alt="Mike">
                    <h1>I Create Front-End Websites and Blogs using Twitter Bootstrap and Wordpress</h1> <div class="col-md-3 col-md-offset-7">
                                <form id="form1" runat="server">
                                    <div>
                                <fieldset id="field">
                                    <h3>SEND ME AN EMAIL</h3>
                                    <table>
                                        <tr>
                                            <td>
                                                <b>Name:</b>
                                            </td>
                                            <td>
                                                <asp:TextBox 
                                                        ID="txtName"
                                                        class="areabox" 
                                                    runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator 
                                                    ForeColor="Red" 
                                                    ID="RequiredFieldValidator1" 
                                                    runat="server"
                                                    ControlToValidate="txtName" 
                                                    ErrorMessage="Name is required" 
                                                    Text="*">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Email:</b>
                                            </td>
                                            <td>
                                                <asp:TextBox 
                                                    ID="txtEmail" 
                                                    class="areabox"
                                                    runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator 
                                                    Display="Dynamic" 
                                                    ForeColor="Red" 
                                                    ID="RequiredFieldValidator2"
                                                    runat="server" 
                                                    ControlToValidate="txtEmail" 
                                                    ErrorMessage="Email is required"
                                                    Text="*">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator 
                                                    Display="Dynamic" 
                                                    ForeColor="Red" 
                                                    ID="RegularExpressionValidator1"
                                                    runat="server" 
                                                    ErrorMessage="Invalid Email" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ControlToValidate="txtEmail"
                                                    Text="*">
                                                </asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Subject:</b>
                                            </td>
                                            <td>
                                                <asp:TextBox 
                                                    ID="txtSubject" 
                                                    class="areabox"
                                                    runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator 
                                                    ForeColor="Red" 
                                                    ID="RequiredFieldValidator3" 
                                                    runat="server"
                                                    ControlToValidate="txtSubject" 
                                                    ErrorMessage="Subject is required" 
                                                    Text="*">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top">
                                                <b>Comments:</b>
                                            </td>
                                            <td style="vertical-align: top">
                                                <asp:TextBox 
                                                    ID="txtComments" 
                                                    class="areabox"
                                                    Rows="3" 
                                                    runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td style="vertical-align: top">
                                                <asp:RequiredFieldValidator 
                                                    ForeColor="Red" 
                                                    ID="RequiredFieldValidator4"    
                                                    runat="server"
                                                    ControlToValidate="txtComments" 
                                                    ErrorMessage="Comments is required" 
                                                    Text="*">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <asp:ValidationSummary 
                                                    HeaderText="Please fix the following errors" 
                                                    ForeColor="Red"
                                                    ID="ValidationSummary1" 
                                                    runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <asp:Label 
                                                    ID="lblMessage" 
                                                    runat="server" 
                                                    Font-Bold="true">
                                                </asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <asp:Button 
                                                    ID="Button1" 
                                                    runat="server" 
                                                    Text="Submit" 
                                                    OnClick="Button1_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                              </div>
                          </form>
                      </div>                                
                 </div>
              </div>
      
            </div><!-- /.container -->
     
        </div>

     </div>
  </div>
       

   <footer class="blog-footer">
      <p>&#169; 2015 Michael Gauci, Email at <strong>mikegauci@gmail.com</strong></p>
    </footer>




    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
