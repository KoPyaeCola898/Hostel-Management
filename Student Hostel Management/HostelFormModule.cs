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
    public partial class HostelFormModule : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();

        public HostelFormModule()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        public void LoadForm()
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM tbForm WHERE sid = @sid", cn);
            cmd.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtRollNo.Text = dr["rollno"].ToString();
                txtName.Text = dr["name"].ToString();
                txtPhNo.Text = dr["phno"].ToString();
                txtMajor.Text = dr["major"].ToString();
                txtAddress.Text = dr["address"].ToString();
                txtfName.Text = dr["fname"].ToString();
                txtfPhno.Text = dr["fphno"].ToString();
                txtfAddress.Text = dr["faddress"].ToString();
                txtHostel.Text = dr["hostel"].ToString();
            }
            dr.Close();
            cn.Close();
        }
    }
}
