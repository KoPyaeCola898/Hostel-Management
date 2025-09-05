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
    public partial class StudentForm : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        Student student;

        public StudentForm(Student st)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            student = st;
        }

        public void Clear()
        {
            txtName.Clear();
            txtRollNo.Clear();
            txtPhNo.Clear();
            txtAddress.Clear();
            txtfName.Clear();
            txtfPhno.Clear();
            txtfAddress.Clear();
            cboMajor.SelectedIndex = -1;
            cboHostel.SelectedIndex = 1;

            txtRollNo.Focus();
        }

        public void Disable()
        {
            txtName.Enabled = false;
            txtRollNo.Enabled = false;
            txtPhNo.Enabled = false;
            txtAddress.Enabled = false;
            txtfName.Enabled = false;
            txtfPhno.Enabled = false;
            txtfAddress.Enabled = false;
            cboMajor.Enabled = false;
            cboHostel.Enabled = false;
            btnSubmit.Enabled = false;
            btnCancel.Enabled = false;
            btnCheck.Enabled = true;
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Are you sure want to pay admission fee and submit the application form?", "Submit Form", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();

                    //insert student details
                    string query = "INSERT INTO tbForm (sid, rollno, name, phno, major, address, fname, fphno, faddress, hostel, status) VALUES (@sid, @rollno, @name, @phno, @major, @address, @fname, @fphno, @faddress, @hostel, @status)";
                    cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
                    cmd.Parameters.AddWithValue("@rollno", txtRollNo.Text);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@phno", txtPhNo.Text);
                    cmd.Parameters.AddWithValue("@major", cboMajor.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@fname", txtfName.Text);
                    cmd.Parameters.AddWithValue("@fphno", txtfPhno.Text);
                    cmd.Parameters.AddWithValue("@faddress", txtfAddress.Text);
                    cmd.Parameters.AddWithValue("@hostel", cboHostel.Text);
                    cmd.Parameters.AddWithValue("@status", "Pending");
                    cmd.ExecuteNonQuery();

                    cn.Close();
                    MessageBox.Show("Application form submitted successfully.", "Submit Form", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Disable();
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void btnCheck_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Please wait while we are checking your application form status.", "Checking", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void StudentForm_Load(object sender, EventArgs e)
        {
            lblId.Text = student.lblid.Text;
        }
    }
}
