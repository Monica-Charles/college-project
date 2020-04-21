<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="Monica_Project.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
     .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-right: 0px;
        }
        .auto-style3 {
            width: 276px;
            text-align: center;
        }
        .auto-style4 {
            width: 730px;
        }
        .auto-style5 {
            text-align: center;
            font-size: large;
            font-family: Arial;
            font-variant: normal;
            color: #003399;
        }
        .auto-style7 {
            text-align: center;
            font-family: "Arial Black";
            color: #003399;
            font-size: x-large;
        }
        .auto-style10 {
            text-align: center;
            font-size: large;
            font-family: Arial;
            font-style: italic;
            color: #003399;
        }
        .logincon{
            border-color:#00ff90;
            background-color:#0094ff;
            border-style:solid;
            margin-left:400px;
            margin-right:400px;
            border-radius:10px;
        }
         .auto-style11 {
             text-align: center;
         }
         .newStyle1 {
             font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
             font-size: xx-large;
             font-style: italic;
             color: #0094FF;
             background-color: #FFFFFF;
             border-left-color: #00ff90;
             border-right-color: #00ff90;
             border-bottom-color: #00ff90;
             border-top-color: #FFFFFF;
             border-style: solid;
             border-width: medium;
             padding-left: 30px;
             padding-right: 30px;
             padding-bottom: 15px;
             padding-top:5px;
         }
         .newStyle2 {
             font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
             font-size: x-large;
             font-style: italic;
             color: #FFFFFF;
             background-color: #00FF00;
             padding-left:15px;
             padding-right:15px;
         }
         .auto-style12 {
             font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
             font-size: x-large;
             font-style: italic;
             color: #FFFFFF;
             background-color: #00FF00;
             padding-left: 15px;
             padding-right: 15px;
             font-weight: bold;
             border-color:#00FF00;
         }
         .newStyle3 {
             background-color: #FF0000;
             font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
             font-size: x-large;
             font-style: italic;
             color: #FFFFFF;
             border-color: #FF0000;
             padding-left: 15px;
             padding-right: 15px;
             font-weight: bold;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
             <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl="~/myPope John Paul II College of Education.png" Width="228px" />
                </td>
                <td class="auto-style4">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style7"><strong><em>POPE JOHN PAUL II COLLEGE OF EDUCATION</em></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">RE-ACCREDITED WITH &quot;A &quot; GRADE</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">REDDIYARPALAYAM - PUDUCEHERRY</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" CssClass="auto-style2" Height="216px" ImageUrl="~/JP2.jpg" Width="209px" />
                </td>
            </tr>
        </table>
            </div>
        &nbsp;
        &nbsp;
        <div class="logincon">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        
                        
                        <strong>
                        
                        
                        <asp:Label ID="Label1" runat="server" CssClass="newStyle1" Text="Login"></asp:Label>
                        
                        
                        </strong>
                        
                        
                        <br />
                    </td>
                </tr>
            </table>
            &nbsp;


            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        <br />
                        <br />
                        <asp:TextBox ID="TxtUserId" runat="server" Height="20px" Width="250px" placeholder="userid"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <br />
                        <asp:TextBox ID="TxtPassword" runat="server" Height="20px" Width="250px" placeholder="password" TextMode="Password"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <br />
                        <br />
                        <strong>
                        <asp:Button ID="ButLogin" runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style12" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BuCancel" runat="server" CssClass="newStyle3" Text="Cancel"  />
                        <br />
                        <br />
                        <br />
                        <br />
                        </strong>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
