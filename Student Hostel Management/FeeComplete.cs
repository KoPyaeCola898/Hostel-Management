using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Student_Hostel_Management
{
    public partial class FeeComplete : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        Student student;

        public FeeComplete(Student st)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            student = st;
        }

        private void LoadStudentHostelInfo()
        {
            cn.Open();
            cmd = new SqlCommand("SELECT hostel, roomNo FROM tbFee WHERE sid = @sid", cn);
            cmd.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                string hostel = dr["hostel"].ToString();
                string roomNo = dr["roomNo"].ToString();
                lblDetails.Text = $"You have been allocated to {hostel} Hostel, \r\nand your Room Number is {roomNo}.\r\n";
            }
            else
            {
                lblDetails.Text = "No hostel allocation found!";
            }

        }

        private void FeeComplete_Load(object sender, EventArgs e)
        {
            lblId.Text = student.lblid.Text;

            LoadStudentHostelInfo();
        }
    }
}
