<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TisoneUI.aspx.cs" Inherits="Diligence_1.TisoneUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link  rel="stylesheet" type="text/css" href="CSS/Test1.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Z">
        <div class="A">
     
        </div>
               <div class="B">
                   Welcome*To*Sun*Jin
              </div>
           
            <div class="C">
                <input id="txtBox3"  type="text" placeholder="输入正确的验证码"/>
                <img alt="" src="yzm.aspx" id="img1"/>
                <input id="txtBox4" type="button"   value="Rec"/>
                <input id="txtBox5" type="button"   value="Lop"/>
                <asp:TextBox runat="server"  ID="txtBox1" Width="300px" Height="30px" placeholder="请输入您的账号\电子邮箱"></asp:TextBox>
                <asp:TextBox runat="server"  ID="txtBox2" Width="300px" Height="30px" placeholder="请输入您的密码" TextMode="Password"></asp:TextBox>
                 
                <asp:Label ID="Label1" runat="server" Text="显示密码" ></asp:Label>
            </div>
          
                
            </div>
    </form>
    <script src="js/jquery-3.3.1.js"></script>
      <script type="text/javascript">
        var i = 0;
          $('#Label1').click(function () {
             
            i++;
            if (i % 2 == 0) {
                
                $('#txtBox2').attr("type", 'text');
            }
            else {
              
               $('#txtBox2').attr("type", 'password');



            }
          })

    </script>
</body>
</html>
