 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailForm.aspx.cs" Inherits="EOWwebpage.DetailForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
  
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <%--<link href="EOWForm1.css" rel="stylesheet" type="text/css" />--%>
    <link rel="stylesheet" type="text/css" href="EowWPcss.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <div class="jumbotron">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h1 id="title" class="text-center">Buyers Details For EOW Cases</h1>
	                    <p id="description" class="description text-center">AIRWIL's Green Avenue Buyers Details<p/>
                    </div>
                    <div class="col-sm-12">
                        <div class="detail-form">
                            <fieldset>
                                <legend>Detail Form</legend>
                            <asp:HiddenField ID="hfUserID" runat="server" />
                            <table>
                                 <tr class="form-group">
                                     <td colspan="2">
                                         <asp:Label ID="lbltowername" class="lbltowername" runat="server" Text="Choose Tower Name"></asp:Label>
                                          
                                     
                                            <asp:RadioButtonList ID="rbtowername" runat="server" Font-Bold="False" Font-Italic="False" Height="16px" Width="132px">
                                                <asp:ListItem Selected="True">Beetle</asp:ListItem>
                                                <asp:ListItem>Caspia</asp:ListItem>
                                                <asp:ListItem>Iris</asp:ListItem>
                                                <asp:ListItem>Orchid</asp:ListItem>
                                                <asp:ListItem>Lotus</asp:ListItem>
                                                <asp:ListItem>Tulip</asp:ListItem>
                                                <asp:ListItem>Okewood</asp:ListItem>
                                                <asp:ListItem>Rosewood</asp:ListItem>
                                                <asp:ListItem>Greenotel</asp:ListItem>
                                            </asp:RadioButtonList>
                                     </td>
                                </tr>
                                  
                                <tr class="form-group">
                                    <td colspan="2">

                                       
                                           <asp:Label ID="lblFlatNo" runat="server">
                                               Enter Flat No. : (Ground Floor Buyers Please Enter 001, 002 Etc.)
                                           </asp:Label>
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="txtFlatNo" runat="server" CssClass="form-control"></asp:TextBox>

                                     </td>
                                </tr>
                                 <tr class="form-group">
                                    <td colspan="2">
                                        <asp:Label id="lbl1stAName" runat="server">Full Name of 1st Applicant</asp:Label> 
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>

                                        <asp:TextBox id="txt1stAName" runat="server"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr class="form-group">
                                    <td colspan="2">
                                        <asp:Label ID="lbl2ndAName" runat="server">Full Name of 2nd Applicant:
                                                (In Case of Single Applicant Leave Blank , In Case of 3 or More Applicants Enter all the Names here)
                                         </asp:Label> 
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>

                                        <asp:TextBox ID="txt2ndAName" runat="server"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr class="form-group">
                                    <td colspan="2">
                                        <asp:Label id="lblAddress" runat="server">Full Address for Communication (with Pincode) :</asp:Label> 
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox id="txtAddress" runat="server"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td colspan="2">
                                        <asp:Label id="lblPincode" runat="server">Pincode:</asp:Label> 
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox id="txtPincode" runat="server"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td  colspan="2">
                                        <asp:Label id="lblemail" runat="server">Email-ID :</asp:Label> 
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox id="txtemail" runat="server"  CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td  colspan="2">
                                        <asp:Label id="lblmobileNumber" runat="server">
                                            Enter Your Mobile Number :</asp:Label> 
                                   
                                        <asp:TextBox id="txtmobileNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td colspan="2">
                                        <asp:Label id="lblOriginalArea" runat="server">
                                            Original Area of Flat as Per BBA (in Sqft.) :
                                        </asp:Label> 
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox id="txtOriginalArea" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr class="form-group">
                                    <td  colspan="2">
                                        <asp:Label id="lblTotalCost" runat="server">
                                            Total Cost of Flat (As Per BBA, Without Service Tax) :

                                        </asp:Label> 
                                       <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>

                                        <asp:TextBox id="txtTotalCost" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td  colspan="2">
                                        <asp:Label id="lblTotalPaid" runat="server"> 
                                            TotalPaid amount of Flat (Including Service Tax) :</asp:Label>
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>

                                    <asp:TextBox ID="txtTotalPaid" runat="server" CssClass="form-control"></asp:TextBox>
                                        
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td colspan="2">
                                         <asp:Label ID="lblAmountPaidaftermay2018" runat="server">
                                             Did you Pay Any amount after May-2018 to AIRWIL</asp:Label>
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:RadioButtonList ID="rbpaidaftermay18" runat="server">
                                                <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                        </asp:RadioButtonList>
                                     </td>
                                </tr>
                                <tr class="form-group">
                                    <td  colspan="2">
                                        <asp:Label ID="lblPaidaftermay18" runat="server">
                                            If Yes, Please Enter How much Total Paid After May-2018 : (Enter 0 if not paid anything)
                                        </asp:Label>
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>

                                        <asp:TextBox id="txtpaidaftermay18" runat="server" CssClass="form-control"></asp:TextBox> 
                                    </td>

                                </tr>
                                 <tr class="form-group">
                                    <td colspan="2">
                                         <asp:Label ID="lblPaidExtra" runat="server">
                                             Did you Pay Any amount after May-2018 to AIRWIL</asp:Label>
                                         <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                         <asp:RadioButtonList ID="rbPaidExtra" runat="server">
                                                <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                          </asp:RadioButtonList>
                                     </td>
                                </tr>
                                <tr class="form-group">
                                    <td  colspan="2">
                                        <asp:Label ID="may18" runat="server">
                                            If Yes, Please Enter How much Total Paid After May-2018 : 
                                            (Enter 0 if not paid anything)
                                        </asp:Label>
                                        <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:TextBox id="txtpaidExtra" runat="server" class="form-control"></asp:TextBox> 
                                    </td>

                                </tr>
                                <tr>
                                
                                    <td colspan="2" style="margin-left: 40px">
                                        
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <br />
                                        <br />
                                        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload File" />

                                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
                                <tr class="form-group">
                                    <td colspan="2">
                                       <div class="declare">
    	                                <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>

	                                    <p> <b>I/We Declare that:</b></p>
		                                <p>The Information given about is true to the best of my knowledge and belief & nothing has been concealed there from.</p>
		                                <p> That I/We want my/our name to be added as the Complainant in the</p>
		
		                                <p> EOW FIR No-47/2018 & Case No CR-149/2020</p>
		                                <p>Investigated by EOW, IO Mr. Pawan Kumar</p>
                                        <asp:CheckBox ID="CB" runat="server"/>
		                                <label for="iAccept"> I Accept</label>
	                                  </div>
                                    </td>

                                </tr>
                                
                              <tr>
                                    <td>
                                        <div class="form-group">
                                            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
      
                                        </div>
                                    </td>
                                   <td colspan="2">
                                        <div class="form-group">
                                           <a href="Dashbord.aspx"> <asp:Label ID="lblGoBackToProfilePage" runat="server" Text="Go Back To Profile Page"></asp:Label></a>
      
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Green"></asp:Label>
                                       
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td colspan="2">
                                        <asp:Label id="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
                                       
                                    </td>
                                </tr>
                            </table>
                                </fieldset>
                        </div>


                    </div>
                </div>
            </div>
        </div>
         <section class="jumbotron">
          <div class="container-fluid">
                        <div class="row">
                      <nav class="navbar navbar-expand-md navbar-light bg-light fixed-bottom">
                       
                          <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollalpse">
                           
                       </button>
                          
                    <div class="collapse navbar-collapse justify-content-center">
                      <div class="navbar-nav">
                        <a href="Index.aspx" class="nav-item nav-link active">Home</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Gallery</a>
                     
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Contact Us</a>
                        <a href="SlideshowDemo.aspx"  class="nav-item nav-link active">Objective</a>
                      </div>
                        </div>
                      
                   
                          
                          </nav>
                            
                 </div>
                  
                 </div>
        <footer class="container">
            <div class="row">
                <p class="col-sm-12 text-center">&copy: 2020 Contact Us for any Query</p>
            </div>
            </footer>
          </section>
    </form>
</body>
</html>
