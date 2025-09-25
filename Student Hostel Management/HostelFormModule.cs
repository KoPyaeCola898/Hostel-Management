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
        HostelForm hostelForm;

        public HostelFormModule(HostelForm hf)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            hostelForm = hf;
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnPassCancel_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnPassSave_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to approve this student application?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                cn.Open();
                cmd = new SqlCommand("UPDATE tbForm SET status = 'Approved', alhostel = @alhostel WHERE sid = @sid", cn);
                cmd.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
                cmd.Parameters.AddWithValue("@alhostel", cboAlHostel.Text);
                cmd.ExecuteNonQuery();
                cn.Close();
                MessageBox.Show("Application approved successfully!", "Hostel Management System", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Dispose();
            }
            hostelForm.LoadForm();
        }
    }
}
