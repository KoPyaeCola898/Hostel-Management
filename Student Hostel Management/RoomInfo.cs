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
    public partial class RoomInfo : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        Rooms rooms;
        public string hostel;

        public RoomInfo()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            loadData();
        }

        public void loadData()
        {
            int i = 0;
            dgvStudent.Rows.Clear();
            cn.Open();
            cmd = new SqlCommand("SELECT f.rollno, f.name, f.phno FROM tbForm AS f INNER JOIN tbFee AS h ON f.sid = h.sid WHERE h.roomNo = @roomNo AND h.hostel = @hostel", cn);
            cmd.Parameters.AddWithValue("@roomNo", lblRoom.Text);
            cmd.Parameters.AddWithValue("@hostel", lblhostel.Text);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                i++;
                dgvStudent.Rows.Add(i, dr[0].ToString(), dr[1].ToString(), dr[2].ToString());
            }
            dr.Close();
            cn.Close();
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void RoomInfo_Load(object sender, EventArgs e)
        {
            loadData();
        }
    }
}
