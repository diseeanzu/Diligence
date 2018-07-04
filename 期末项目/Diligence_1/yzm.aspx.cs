using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Drawing2D;
using System.Drawing;
using System.Data;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Drawing.Imaging;


namespace Diligence_1
{
    public partial class yzm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "abcdefeghijjklmnopqrstuvywz1234567890";
            Bitmap img = new Bitmap(80, 40);
            Graphics graphics = Graphics.FromImage(img);
            graphics.FillRectangle(new SolidBrush(Color.Aqua),0,0,80,40);
            Random ran = new Random();
            ran.Next(0,str.Length);
            string s = "";
            for (int i = 0; i < str.Length; i++)
            {
                s += str.Substring(ran.Next(0,str.Length),1);
            }
            graphics.DrawString(s, new Font("华文彩云", 20), new SolidBrush(Color.Red), 0, 10);
            Session["yzm"] = s;

        }
    }
}