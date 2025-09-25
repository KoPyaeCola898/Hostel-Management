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
    public partial class WardenSetting : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        Warden warden;
        public string username;
        string name;
        string password;

        public WardenSetting(Warden wd)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            warden = wd;
        }

        public void Clear()
        {
            txtCurPass.Clear();
            txtNPass.Clear();
            txtRePass2.Clear();
            txtCurPass.Focus();
        }

        private void btnPassSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCurPass.Text != warden._pass)
                {
                    MessageBox.Show("Current password did not match!", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txtNPass.Text != txtRePass2.Text)
                {
                    MessageBox.Show("Confirm password did not match!", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                dbcon.ExecuteQuery("UPDATE tbUser SET password= '" + txtNPass.Text + "' WHERE username='" + lblname.Text + "'");
                MessageBox.Show("Password has been succefully changed!", "Changed Password", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnPassCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void WardenSetting_Load(object sender, EventArgs e)
        {
            lblname.Text = warden.lblUsername.Text;
        }
    }
}
