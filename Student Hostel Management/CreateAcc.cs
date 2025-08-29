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
    public partial class CreateAcc : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();

        public CreateAcc()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
        }

        public void Clear()
        {
            txtConfirm.Clear();
            txtFullname.Clear();
            txtPassword.Clear();
            txtusername.Clear();
            txtFullname.Focus();
        }

        private void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPassword.Text != txtConfirm.Text)
                {
                    MessageBox.Show("Passwords did not match!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                cn.Open();
                cmd = new SqlCommand("INSERT INTO tbUser (username, password, name ,role) VALUES (@username, @password, @name, @role)", cn);
                cmd.Parameters.AddWithValue("@username", txtusername.Text); // Add username parameter
                cmd.Parameters.AddWithValue("@password", txtPassword.Text); // Add password parameter
                cmd.Parameters.AddWithValue("@role", "Student"); // Add role parameter
                cmd.Parameters.AddWithValue("@name", txtFullname.Text); // Add name parameter
                cmd.ExecuteNonQuery();
                cn.Close();
                MessageBox.Show("New account created successfully!", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Clear();
                this.Hide();
                Login login = new Login();
                login.ShowDialog();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error); // My Code: Show error message if an exception occurs
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            Clear();
            this.Hide();
            Login login = new Login();
            login.ShowDialog();
        }

        private void btnLogin_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Clear();
            this.Hide();
            Login login = new Login();
            login.ShowDialog();
        }
    }
}
