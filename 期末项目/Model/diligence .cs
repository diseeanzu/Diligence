using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class diligence
    {
        public int dilId { get; set; }//日精进ID
        public string dilTheme { get; set; }//日精进主题
        public DateTime dilTime{ get; set; }//日精进时间
        public string dilContent { get; set; }//日精进内容
        public int stuId { get; set; }//学生ID
        public string evaluate { get; set; }//评价
        public int grId { get; set; }//等级

        
    }
}
