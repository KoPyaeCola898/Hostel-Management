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
using System.Xml.Linq;

namespace Student_Hostel_Management
{
    public partial class HostelForm : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;

        public HostelForm()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            LoadForm();
        }

        public void LoadForm()
        {
            int i = 0;
            dgvAppForm.Rows.Clear();
            string query  = "SELECT sid, rollno, name, address, hostel FROM tbForm WHERE status = 'Pending' ORDER BY aid";
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

        private void dgvAppForm_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string colName = dgvAppForm.Columns[e.ColumnIndex].Name;
            if (colName == "Submit")
            {
                HostelFormModule module = new HostelFormModule(this);
                module.lblId.Text = dgvAppForm.Rows[e.RowIndex].Cells[1].Value.ToString();

                cn.Open();
                cmd = new SqlCommand("SELECT * FROM tbForm WHERE sid = @sid", cn);
                cmd.Parameters.AddWithValue("@sid", Convert.ToInt32(module.lblId.Text));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    module.txtRollNo.Text = dr["rollno"].ToString();
                    module.txtName.Text = dr["name"].ToString();
                    module.txtPhNo.Text = dr["phno"].ToString();
                    module.txtMajor.Text = dr["major"].ToString();
                    module.txtAddress.Text = dr["address"].ToString();
                    module.txtfName.Text = dr["fname"].ToString();
                    module.txtfPhno.Text = dr["fphno"].ToString();
                    module.txtfAddress.Text = dr["faddress"].ToString();
                    module.txtHostel.Text = dr["hostel"].ToString();
                }
                dr.Close();
                cn.Close();

                module.ShowDialog();
            }
        }
    }
}
