<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EOWGallery.aspx.cs" Inherits="EOWwebpage.EOWGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="EowWPcss.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
    <title></title>
</head>
<body>
     
    <header class="container-fluid">
            <div class="row heading">
               
                <h1 class="col-sm-12 text-center">Buyers Details For EOW Cases</h1>
                <h3 class="col-sm-12 text-center">(AIRWIL's Green Avenue Buyers Details)</h3>
            </div>
          </header>

            
                <section class="jumbotron">
                    <div class="container-fluid">
                        <div class="row">
                           <nav class="navbar navbar-expand-md navbar-light bg-light">
                              <a href="#" class="navbar-brand">EOW</a>
                                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollalpse">
                                  <span class="navbar-toggler-icon"></span>
                                </button>
                          
                    <div class="collapse navbar-collapse justify-content-center" id="navbarCollapse">
                      <div class="navbar-nav">
                        <a href="Index.aspx" class="nav-item nav-link active">Home</a>
                        <a href="EOWGallery.aspx"  class="nav-item nav-link active">Gallery</a>
                     
                        <a href="ContactUs.aspx"  class="nav-item nav-link active">Contact Us</a>
                        <a href="#"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                               </nav>
                            </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center">
                <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
                    </div>
                <div></div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
            <br />
                </div>
            <div>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Blue" BorderStyle="Dotted" Width="99%" Height="100%">
            </asp:Panel>
        </div>
            </div>
    </form>
       </div>


                </section>  
     <section class="jumbotron">
          <footer class="container">
            <div class="row">
                <p class="col-sm-12 text-center">&copy: 2020 Contact Us for any Query</p>
            </div>
            </footer>
          </section>
      
</body>
</html>
