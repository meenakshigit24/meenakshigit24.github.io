<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageGallery.aspx.cs" Inherits="EOWwebpage.imageGallery" %>

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
    <form id="form1" runat="server">
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
                      
                    <div class="navbar-nav ml-auto">
                        <a href="LoginForm.aspx" class="nav-item nav-link active">Login</a>
                    </div>
                 </nav>         
                 </div>
                 
                 </div>
                    </section>
        <section>
        <div class="jumbotron">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 image">
            <asp:Button ID="btnimage" runat="server" Text="Back To Gallery" OnClick="btnimage_Click" />
            <br /><br />
            <asp:Image ID="Image1" runat="server" height="500px" Width="1000px" ImageAlign="AbsMiddle" BorderStyle="Solid" ForeColor="#CCCC00"/>
            <br /><br />
            
        </div>
                    </div>
                </div>
            </div>
            </section>
         <section class="jumbotron">
         
        <footer class="container">
            <div class="row">
                <p class="col-sm-12 text-center">&copy: 2020 Contact Us for any Query</p>
            </div>
            </footer>
          </section>
    </form>
</body>
</html>
