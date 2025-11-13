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
    public partial class Dashboard : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;

        public Dashboard()
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            LoadAllHostelData();
            LoadTotalStudent();
        }

        private void LoadAllHostelData()
        {
            LoadHostel("tbDagonRm", lblDagonTotal, lblDagonOccupied, lblDagonAvailable);
            LoadHostel("tbYankinRm", lblYankinTotal, lblYankinOccupied, lblYankinAvailable);
            LoadHostel("tbOakkalapaRm", lblOakkalapaTotal, lblOakkalapaOccupied, lblOakkalapaAvailable);
            LoadHostel("tbShwePyiTharRm", lblShwePyiTharTotal, lblShwePyiTharOccupied, lblShwepyiTharAvailable);
            LoadHostel("tbCherryRm", lblCherryTotal, lblCherryOccupied, lblCherryAvailable);
            LoadHostel("tbNguwaRm", lblNguwaTotal, lblNguwaOccupied, lblNguwaAvailable);
            LoadHostel("tbGankGawRm", lblGankGawTotal, lblGankGawOccupied, lblGankGawAvailable);
            LoadHostel("tbSwalTawRm", lblSwalTawTotal, lblSwalTawOccupied, lblSwalTawAvailable);
            LoadHostel("tbZeZaWarRm", lblZeZaWarTotal, lblZeZaWarOccupied, lblZeZaWarAvailable);
            LoadHostel("tbPadaukRm", lblPadaukTotal, lblPadaukOccupied, lblPadaukAvailable);
        }

        private void LoadHostel(string tableName, Label lblTotal, Label lblOccupied, Label lblAvailable)
        {
            try
            {
                cn.Open();
                SqlCommand cmdTotal = new SqlCommand($"SELECT SUM(capacity) FROM {tableName}", cn);
                int total = Convert.ToInt32(cmdTotal.ExecuteScalar() ?? 0);

                SqlCommand cmdOccupied = new SqlCommand($"SELECT SUM(occupied) FROM {tableName}", cn);
                int occupied = Convert.ToInt32(cmdOccupied.ExecuteScalar() ?? 0);

                int available = total - occupied;

                lblTotal.Text = "Total : " + total.ToString();
                lblOccupied.Text = "Occupied : " + occupied.ToString();
                lblAvailable.Text = "Available : " + available.ToString();
                cn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error loading {tableName}: " + ex.Message);
            }
        }

        private void LoadTotalStudent()
        {
            cn.Open();
            SqlCommand cmdTotalStudent = new SqlCommand("SELECT COUNT(*) FROM tbFee", cn);
            int studentTotal = Convert.ToInt32(cmdTotalStudent.ExecuteScalar() ?? 0);
            lblTotalStudents.Text = "Total Hostel Students : " + studentTotal.ToString();
            cn.Close();
        }
    }
}
