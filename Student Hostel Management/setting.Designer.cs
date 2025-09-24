namespace Student_Hostel_Management
{
    partial class setting
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(setting));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.lblname = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnPassSave = new System.Windows.Forms.Button();
            this.btnPassCancel = new System.Windows.Forms.Button();
            this.txtRePass2 = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtNPass = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtCurPass = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Teal;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 480);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(983, 80);
            this.panel1.TabIndex = 58;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Century Gothic", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Image = ((System.Drawing.Image)(resources.GetObject("label1.Image")));
            this.label1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.label1.Location = new System.Drawing.Point(7, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(94, 43);
            this.label1.TabIndex = 0;
            this.label1.Text = "User Setting";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblname
            // 
            this.lblname.AutoSize = true;
            this.lblname.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblname.Location = new System.Drawing.Point(209, 98);
            this.lblname.Name = "lblname";
            this.lblname.Size = new System.Drawing.Size(125, 27);
            this.lblname.TabIndex = 68;
            this.lblname.Text = "Username";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(147, 78);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(50, 50);
            this.pictureBox1.TabIndex = 67;
            this.pictureBox1.TabStop = false;
            // 
            // btnPassSave
            // 
            this.btnPassSave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnPassSave.BackColor = System.Drawing.Color.Green;
            this.btnPassSave.FlatAppearance.BorderSize = 0;
            this.btnPassSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPassSave.ForeColor = System.Drawing.Color.White;
            this.btnPassSave.Location = new System.Drawing.Point(632, 358);
            this.btnPassSave.Name = "btnPassSave";
            this.btnPassSave.Size = new System.Drawing.Size(94, 35);
            this.btnPassSave.TabIndex = 65;
            this.btnPassSave.Text = "Save";
            this.btnPassSave.UseVisualStyleBackColor = false;
            this.btnPassSave.Click += new System.EventHandler(this.btnPassSave_Click);
            // 
            // btnPassCancel
            // 
            this.btnPassCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnPassCancel.BackColor = System.Drawing.Color.Silver;
            this.btnPassCancel.FlatAppearance.BorderSize = 0;
            this.btnPassCancel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPassCancel.ForeColor = System.Drawing.Color.Black;
            this.btnPassCancel.Location = new System.Drawing.Point(746, 358);
            this.btnPassCancel.Name = "btnPassCancel";
            this.btnPassCancel.Size = new System.Drawing.Size(94, 35);
            this.btnPassCancel.TabIndex = 66;
            this.btnPassCancel.Text = "Cancel";
            this.btnPassCancel.UseVisualStyleBackColor = false;
            this.btnPassCancel.Click += new System.EventHandler(this.btnPassCancel_Click);
            // 
            // txtRePass2
            // 
            this.txtRePass2.Location = new System.Drawing.Point(313, 271);
            this.txtRePass2.Name = "txtRePass2";
            this.txtRePass2.Size = new System.Drawing.Size(527, 34);
            this.txtRePass2.TabIndex = 64;
            this.txtRePass2.UseSystemPasswordChar = true;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(143, 274);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(216, 25);
            this.label10.TabIndex = 63;
            this.label10.Text = "Re-type Password :";
            // 
            // txtNPass
            // 
            this.txtNPass.Location = new System.Drawing.Point(313, 213);
            this.txtNPass.Name = "txtNPass";
            this.txtNPass.Size = new System.Drawing.Size(527, 34);
            this.txtNPass.TabIndex = 62;
            this.txtNPass.UseSystemPasswordChar = true;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(143, 216);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(182, 25);
            this.label9.TabIndex = 61;
            this.label9.Text = "New Password :";
            // 
            // txtCurPass
            // 
            this.txtCurPass.Location = new System.Drawing.Point(313, 158);
            this.txtCurPass.Name = "txtCurPass";
            this.txtCurPass.Size = new System.Drawing.Size(527, 34);
            this.txtCurPass.TabIndex = 60;
            this.txtCurPass.UseSystemPasswordChar = true;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(143, 161);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(212, 25);
            this.label8.TabIndex = 59;
            this.label8.Text = "Current Password :";
            // 
            // setting
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Gainsboro;
            this.ClientSize = new System.Drawing.Size(983, 560);
            this.ControlBox = false;
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.lblname);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnPassSave);
            this.Controls.Add(this.btnPassCancel);
            this.Controls.Add(this.txtRePass2);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.txtNPass);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtCurPass);
            this.Controls.Add(this.label8);
            this.Font = new System.Drawing.Font("Century Gothic", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "setting";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SETTING";
            this.Load += new System.EventHandler(this.setting_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblname;
        private System.Windows.Forms.PictureBox pictureBox1;
        public System.Windows.Forms.Button btnPassSave;
        public System.Windows.Forms.Button btnPassCancel;
        private System.Windows.Forms.TextBox txtRePass2;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtNPass;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtCurPass;
        private System.Windows.Forms.Label label8;
    }
}