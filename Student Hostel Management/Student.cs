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
    public partial class Student : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        public string _pass;

        public Student()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
        }

        private Form activeForm = null;
        public void openChildForm(Form childForm)
        {
            if (activeForm != null)
                activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            lblTitle.Text = childForm.Text; // Set the title label to the child form's title
            panelMain.Controls.Add(childForm);
            panelMain.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void btnForm_Click(object sender, EventArgs e)
        {
            //openChildForm(new FeeST(this));

            cn.Open();
            cmd = new SqlCommand("SELECT COUNT(*) FROM tbFee WHERE sid = @sid", cn);
            cmd.Parameters.AddWithValue("sid", lblid.Text);
            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count > 0)
            {
                SqlCommand cmd2 = new SqlCommand("SELECT feeStatus FROM tbFee WHERE sid = @sid", cn);
                cmd2.Parameters.AddWithValue("sid", lblid.Text);
                dr = cmd2.ExecuteReader();

                if (dr.Read())
                {
                    string status = dr["feeStatus"].ToString();
                    if (status == "Pending")
                    {
                        openChildForm(new FeeST(this));
                    }
                    else if (status == "Paid")
                    {
                        openChildForm(new FeeComplete(this));
                    }
                }
                
            }
            else
            {
                openChildForm(new StudentForm(this));
            }
            cn.Close();

        }

        private void btnRule_Click(object sender, EventArgs e)
        {
            openChildForm(new RuleView());
        }

        private void btnSetting_Click(object sender, EventArgs e)
        {
            openChildForm(new setting(this));
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Logout Application?", "Logout", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Hide();
                Login login = new Login();
                login.ShowDialog();
            }
        }

        private void Student_Load(object sender, EventArgs e)
        {
            btnForm.PerformClick();
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Exit Application?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}
