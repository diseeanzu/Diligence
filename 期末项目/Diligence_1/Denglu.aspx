<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Denglu.aspx.cs" Inherits="Diligence_1.TisoneUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link  rel="stylesheet" type="text/css" href="CSS/Denglu.css"/>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="A">
     
        </div>
               <div class="B">
                   Welcome*To*Sun*Jin
              </div>
           z
              
            <div class="C">
                <input id="txtBox3"  type="text" placeholder="输入正确的验证码"/>
               <span id="Vhg" style="position:absolute;margin-left:300px;margin-top:600px;z-index:50;" ></span>
                <input id="txtBox4" type="button"   value="Rec"/>
                <input id="txtBox5" type="button"   value="Lop"/>
                <asp:TextBox runat="server"  ID="txtBox1" Width="300px" Height="30px" placeholder="请输入您的账号\电子邮箱"></asp:TextBox>
                <asp:TextBox runat="server"  ID="txtBox2" Width="300px" Height="30px" placeholder="请输入您的密码" TextMode="Password"></asp:TextBox>
                
                <asp:Label ID="Label1" runat="server" Text="显示密码" ></asp:Label>
                <div class="Look" style="    
                    font-size:16px;
                   position:absolute;
                   margin-left:730px;
                  margin-top:700px;">
                    <a  >联系我们</a>|<a >高级设置</a>

                </div>
                <div class="POP">
                  <input  type="radio" value="教师" id="Rad1" name="R" checked="checked"/>教师
                <input  type="radio" value="学生" name="R" id="Rad2" />学生
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

          var code;
          function CodeVr()
          {
              code = "";//创建验证码的函数
              var codeLength = 5;//创建验证码的长度
              var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'w', 'v', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
              var checkBody = document.getElementById("Vhg");
              for (var i = 0; i < codeLength; i++)
              {
                  var charIndex = Math.floor(Math.random() * 36);
                  code += selectChar[charIndex];
              }
              checkBody.value = code;
              //设置验证码的样式
              document.getElementById("Vhg").style.fontFamily = "华文彩云";//设置验证码字体样式
              document.getElementById("Vhg").style.letterSpacing = 0.6;//设置验证码字体间距
              document.getElementById("Vhg").style.color = "#0ab000";//字体颜色(原谅绿)
              document.getElementById("Vhg").innerHTML = code;
          }
          function cut()//判断验证码是否正确
          {
              var var1 = document.getElementById("txtBox3").value;
              var var2 = code;
              if (var1 != var2)
              {
                  alert("验证码错误");
                  document.getElementById("txtBox3").value = "";
              }
          }

    </script>
</body>
</html>
