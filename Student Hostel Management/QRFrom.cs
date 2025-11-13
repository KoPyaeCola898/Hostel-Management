using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Student_Hostel_Management
{
    public partial class QRFrom : Form
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DBConnect dbcon = new DBConnect();
        SqlDataReader dr;
        private string paymentMethod;
        private Timer timer;
        FeeST feeSt;
        Student student;

        public QRFrom(string method, FeeST fs, Student st)
        {
            InitializeComponent();
            cn = new SqlConnection(dbcon.myConnection());
            paymentMethod = method;
            feeSt = fs;
            student = st;
            this.FormClosed += QRForm_FormClosed;
        }

        private void QRFrom_Load(object sender, EventArgs e)
        {
            lblId.Text = feeSt.lblId.Text;

            switch (paymentMethod)
            {
                case "WavePay":
                    picQR.Image = Image.FromFile(@"C:\Users\User\Desktop\Hostel\Student Hostel Management\Payment\wavepay380.jpg");
                    break;
                case "KBZPay":
                    picQR.Image = Image.FromFile(@"C:\Users\User\Desktop\Hostel\Student Hostel Management\Payment\kpay380.jpg");
                    break;
                case "AYAPay":
                    picQR.Image = Image.FromFile(@"C:\Users\User\Desktop\Hostel\Student Hostel Management\Payment\ayapay380.jpg");
                    break;
                case "UABPay":
                    picQR.Image = Image.FromFile(@"C:\Users\User\Desktop\Hostel\Student Hostel Management\Payment\uabpay380.png");
                    break;
            }

            timer = new Timer();
            timer.Interval = 5000;
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            timer.Stop();
            btnFinish.Visible = true;
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnFinish_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Are you sure you have been paied the hostel admission fee?", "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    cn.Open();

                    cmd = new SqlCommand("UPDATE tbFee SET feeStatus = 'Paid' WHERE sid = @sid", cn);
                    cmd.Parameters.AddWithValue("@sid", int.Parse(lblId.Text));
                    cmd.ExecuteNonQuery();

                    cn.Close();
                    MessageBox.Show("Payment Successful!", "Success");
                    //Student student = new Student();
                    //student.btnForm.PerformClick();
                    this.Dispose();
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void QRForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            student.btnForm.PerformClick();
        }
    }
}
