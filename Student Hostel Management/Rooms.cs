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
    public partial class Rooms : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        Warden warden;
        public String room;

        public Rooms(Warden wd)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            warden = wd;
            room = warden.lblName.Text;
            LoadRoom();
        }

        public void LoadRoom()
        {
            int i = 0;
            dgvRoom.Rows.Clear();
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM " + "tb" + room + "Rm" + " ORDER BY roomNo", cn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                i++;
                dgvRoom.Rows.Add(i, dr["id"].ToString(), dr["roomNo"].ToString(), dr["capacity"].ToString(), dr["occupied"].ToString(), dr["status"].ToString(), room);
            }
            dr.Close();
            cn.Close();
        }

        private void dgvRoom_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string colName = dgvRoom.Columns[e.ColumnIndex].Name;
            if (colName == "Info")
            {
                RoomInfo info = new RoomInfo();
                info.lblRoom.Text = dgvRoom.Rows[e.RowIndex].Cells[2].Value.ToString();
                info.lblhostel.Text = dgvRoom.Rows[e.RowIndex].Cells[6].Value.ToString();
                info.ShowDialog();
            }
        }
    }
}
