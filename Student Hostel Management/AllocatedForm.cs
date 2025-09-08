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
    public partial class AllocatedForm : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        Warden warden;
        public string _hostel;

        public AllocatedForm(Warden wa)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            warden = wa;
            LoadForm();
        }

        public void LoadForm()
        {
            int i = 0;
            dgvAppForm.Rows.Clear();
            string query = "SELECT sid, rollno, name, address, hostel FROM tbForm WHERE acstatus = 'Pending' AND alhostel = '" + warden.lblName.Text + "' ORDER BY aid";
            cmd = new SqlCommand(query, cn);
            cn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                i++;
                dgvAppForm.Rows.Add(i, dr["sid"].ToString(), dr["rollno"].ToString(), dr["name"].ToString(), dr["address"].ToString(), dr["hostel"].ToString());
            }
            dr.Close();
            cn.Close();
        }

        private void AllocatedForm_Load(object sender, EventArgs e)
        {
            _hostel = warden.lblName.Text;
        }
    }
}
