using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Student_Hostel_Management
{
    public partial class ListSt : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        Warden warden;
        public string host;

        public ListSt(Warden wa)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            warden = wa;
            host = warden.lblName.Text;
            LoadStudent();
        }

        public void LoadStudent()
        {
            int i = 0;
            dgvStudent.Rows.Clear();
            cn.Open();
            cmd = new SqlCommand("SELECT s.sid, s.rollno, s.name, f.roomNo, s.phno, f.feeStatus FROM tbForm s JOIN tbFee f ON s.sid = f.sid WHERE f.hostel = '" + host + "' ORDER BY f.roomNo", cn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                i++;
                dgvStudent.Rows.Add(i, dr["sid"].ToString(), dr["rollno"].ToString(), dr["name"].ToString(), dr["roomNo"].ToString(), dr["phno"].ToString(), dr["feeStatus"].ToString());
            }
            dr.Close();
            cn.Close();
        }
    }
}
