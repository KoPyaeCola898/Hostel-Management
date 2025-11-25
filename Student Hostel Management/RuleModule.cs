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
    public partial class RuleModule : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        RuleAdd ruleadd;

        public RuleModule(RuleAdd ra)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            ruleadd = ra;
        }

        public void Clear()
        {
            txtRule.Clear();
            txtRule.Focus();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Are you sure want to Add this Rule?", "Add Rule", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();
                    cmd = new SqlCommand("INSERT INTO tbRule (" +
                        "rdes) VALUES (@rdes)", cn);
                    cmd.Parameters.AddWithValue("@rdes", txtRule.Text);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    MessageBox.Show("Rule has been saved successful.", "Save Rule");
                    Clear();
                    this.Dispose();
                }
                ruleadd.LoadRules();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to update this Rule?", "Update Rule!", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                cn.Open();
                cmd = new SqlCommand("UPDATE tbRule SET rdes = @rdes WHERE rid LIKE'" + lblId.Text + "'", cn);
                cmd.Parameters.AddWithValue("@rdes", txtRule.Text);
                cmd.ExecuteNonQuery();
                cn.Close();
                MessageBox.Show("Rule has been successfully updated.", "Update Rule");
                Clear();
                this.Dispose();// To close this form after update data
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}
