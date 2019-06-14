<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="X-UA-Compatible" content="IE=8">
    <link href="StyleSheet1.css" rel="StyleSheet">
<head runat="server">
    <title>Customer Feedback</title>
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
        <div id="content" >
           
            <fieldset>
                <legend> Form of feedback </legend>                     
                  <span>Your comment for us </span>  
                <br />                
               <span>     
              <input type="text" id="Comment" runat="server" />
             <br />
             <span> How did you hear about us? </span>
            <br />
            <span>  <select id="Indication" runat="server" />
            </span>             
                <table>                              
                <tr>                    
                    <td>Name : </td> 
                    <td> 
                        <input type="text" id="Name" runat="server" /></td>
                                      
                    </tr>
                <tr>
                    
                    <td>Email : </td>
                    <td>
                        <input type="text" id="Email" runat="server" /> 
                          </td>
                </tr>
                <tr>
                    
                    <td>Address :  </td>
                    <td>
                        <input type="text" id="Address" runat="server" />
                    </td>
                </tr>
                <tr>
                    
                    <td>City : </td>
                    <td>
                        <input type="text" id="City" runat="server" />
                    </td>
                </tr>
                <tr>
                   
                    <td>Province : </td>
                    <td>
                        <select id="Province" runat="server" />
                    </td>
                </tr>
                <tr>
                    
                    <td>Postal Code : </td>
                    <td>
                        <input type="text" id="PostalCode" runat="server" /></td>
                </tr>
                <tr>
                   
                    <td>Phone : </td>
                    <td>
                        <input type="text" id="Phone" runat="server" />
                    </td>
                </tr>
                 
                <tr> 
                    <td colspan="2">
                        <input type="button" value="Clear form" id="ClearBtn" onserverclick="OnClearBtn_Click" runat="server" />
                        &nbsp                                               
                        <input type="submit" value="Send us Feedback" id="SubmitBtn" onserverclick="OnSubmit_Click" runat="server" />
                    </td>
                </tr>
            </table>
                </fieldset>
           
            
            <asp:ListBox ID="Listbox" runat="server" Visible ="false" Width="400px" Height="100px">
            </asp:ListBox>
        </div>
        </div> <!--end wrapper -->
    </form>
</body>
</html>
