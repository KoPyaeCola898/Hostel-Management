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
        public string hstroom;
        public string host;
        public string _hostel;

        public AllocatedForm(Warden wa)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            warden = wa;
            host = warden.lblName.Text;
            hstroom = "tb" + warden.lblName.Text + "Rm";
            LoadForm();
        }

        public void LoadForm()
        {
            int i = 0;
            dgvAppForm.Rows.Clear();
            string query = "SELECT sid, rollno, name, address, hostel FROM tbForm WHERE status = 'Approved' AND acstatus = 'Pending' AND alhostel = '" + warden.lblName.Text + "' ORDER BY aid";
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

        private void dgvAppForm_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string colName = dgvAppForm.Columns[e.ColumnIndex].Name;
            if (colName == "Submit")
            {
                SubmtForm submit = new SubmtForm(this);
                submit.lblId.Text = dgvAppForm.Rows[e.RowIndex].Cells[1].Value.ToString();

                cn.Open();
                cmd = new SqlCommand("SELECT * FROM tbForm WHERE sid = @sid", cn);
                cmd.Parameters.AddWithValue("@sid", Convert.ToInt32(submit.lblId.Text));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    submit.txtRollNo.Text = dr["rollno"].ToString();
                    submit.txtName.Text = dr["name"].ToString();
                    submit.txtPhNo.Text = dr["phno"].ToString();
                    submit.txtMajor.Text = dr["major"].ToString();
                    submit.txtAddress.Text = dr["address"].ToString();
                    submit.txtfName.Text = dr["fname"].ToString();
                    submit.txtfPhno.Text = dr["fphno"].ToString();
                    submit.txtfAddress.Text = dr["faddress"].ToString();
                    submit.txtHostel.Text = dr["hostel"].ToString();
                }
                dr.Close();
                cn.Close();

                submit.ShowDialog();
            }
        }
    }
}
