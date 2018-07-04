using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class students
    {
        public int stuId { get; set; }//学生ID
        public string stuName { get; set; }//学生姓名
        public string stuSex { get; set; }//学生性别
        public int stuAge { get; set; }//学生年龄
        public int stuUId { get; set; }//学生账号
        public string stuPwd { get; set; }//学生密码
        public int classId { get; set; }//班级ID
    }
}
