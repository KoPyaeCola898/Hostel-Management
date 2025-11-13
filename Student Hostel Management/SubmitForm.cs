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
    public partial class SubmtForm : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        AllocatedForm allocatedForm;
        public string tbRoom;

        public SubmtForm(AllocatedForm alform)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            allocatedForm = alform;
            tbRoom = allocatedForm.hstroom;
            LoadRoom();
        }

        public void LoadRoom()
        {
            cboRoom.Items.Clear();
            cboRoom.DataSource = dbcon.GetTable($"SELECT * FROM {tbRoom} WHERE occupied < capacity AND status = 'Available'");
            cboRoom.DisplayMember = "roomNo";
            cboRoom.ValueMember = "id";
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Are you sure want to accept this Student?", "Accept Student", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();

                    //Insert student Fee and room
                    SqlCommand cmd2 = new SqlCommand("INSERT INTO tbFee (sid, hostel, roomNo, feeStatus) VALUES (@sid, @hostel, @roomNo, @feestatus)", cn);
                    cmd2.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
                    cmd2.Parameters.AddWithValue("@hostel", allocatedForm.host);
                    cmd2.Parameters.AddWithValue("@roomNo", cboRoom.Text);
                    cmd2.Parameters.AddWithValue("@feeStatus", "Pending");
                    cmd2.ExecuteNonQuery();

                    //Update acstatus from From table
                    SqlCommand cmd5 = new SqlCommand("UPDATE tbForm SET acstatus = 'Approved' WHERE sid = @sid", cn);
                    cmd5.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
                    cmd5.ExecuteNonQuery();


                    // Update occupied count (+1)
                    cmd = new SqlCommand("UPDATE " + tbRoom + " SET occupied = occupied + 1 WHERE id = @rid", cn);
                    cmd.Parameters.AddWithValue("@rid", cboRoom.SelectedValue);
                    cmd.ExecuteNonQuery();

                    // Check if occupied == capacity => then set status = 'Unavailable'
                    SqlCommand cmd3 = new SqlCommand("SELECT capacity, occupied FROM " + tbRoom + " WHERE id = @rid", cn);
                    cmd3.Parameters.AddWithValue("@rid", cboRoom.SelectedValue);
                    dr = cmd3.ExecuteReader();

                    if (dr.Read())
                    {
                        int capacity = Convert.ToInt32(dr["capacity"]);
                        int occupied = Convert.ToInt32(dr["occupied"]);
                        dr.Close();

                        if (occupied == capacity)
                        {
                            SqlCommand cmd4 = new SqlCommand("UPDATE " + tbRoom + " SET status = 'Unavailable' WHERE id = @rid", cn);
                            cmd4.Parameters.AddWithValue("@rid", cboRoom.SelectedValue);
                            cmd4.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        dr.Close();
                    }
                    cn.Close();

                    MessageBox.Show("Student has been accepted successfully.", "Accept Student");
                    this.Dispose();
                }
                allocatedForm.LoadForm();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnReject_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Are you sure want to reject this Student?", "Reject Student", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();

                    //Update status from From table
                    SqlCommand cmd6 = new SqlCommand("UPDATE tbForm SET status = 'Pending' WHERE sid = @sid", cn);
                    cmd6.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
                    cmd6.ExecuteNonQuery();

                    cn.Close();

                    MessageBox.Show("Student has been rejected successfully.", "Reject Student");
                    this.Dispose();
                }
                allocatedForm.LoadForm();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Error");
            }
        }
    }
}
