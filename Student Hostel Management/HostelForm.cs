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
                HostelFormModule module = new HostelFormModule();
                module.ShowDialog();

            }
        }
    }
}
