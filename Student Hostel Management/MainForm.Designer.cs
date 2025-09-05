namespace Student_Hostel_Management
{
    partial class MainForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.panelMain = new System.Windows.Forms.Panel();
            this.lblTitle = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.lblUsername = new System.Windows.Forms.Label();
            this.lblRole = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnDashboard = new System.Windows.Forms.Button();
            this.panelLogo = new System.Windows.Forms.Panel();
            this.panelTitle = new System.Windows.Forms.Panel();
            this.panelSlide = new System.Windows.Forms.Panel();
            this.btnSetting = new System.Windows.Forms.Button();
            this.btnRule = new System.Windows.Forms.Button();
            this.btnSForm = new System.Windows.Forms.Button();
            this.btnLogout = new System.Windows.Forms.Button();
            this.lblid = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panelLogo.SuspendLayout();
            this.panelTitle.SuspendLayout();
            this.panelSlide.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.BackColor = System.Drawing.Color.White;
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelMain.Location = new System.Drawing.Point(200, 40);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(978, 604);
            this.panelMain.TabIndex = 11;
            // 
            // lblTitle
            // 
            this.lblTitle.Font = new System.Drawing.Font("Century Schoolbook", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitle.ForeColor = System.Drawing.Color.White;
            this.lblTitle.Location = new System.Drawing.Point(316, 4);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(351, 28);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "TitleName";
            this.lblTitle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.ForeColor = System.Drawing.Color.White;
            this.lblName.Location = new System.Drawing.Point(5, 97);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(35, 25);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "Ln";
            this.lblName.Visible = false;
            // 
            // lblUsername
            // 
            this.lblUsername.AutoSize = true;
            this.lblUsername.ForeColor = System.Drawing.Color.White;
            this.lblUsername.Location = new System.Drawing.Point(29, 7);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(121, 25);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Username";
            this.lblUsername.Visible = false;
            // 
            // lblRole
            // 
            this.lblRole.AutoSize = true;
            this.lblRole.ForeColor = System.Drawing.Color.White;
            this.lblRole.Location = new System.Drawing.Point(35, 125);
            this.lblRole.Name = "lblRole";
            this.lblRole.Size = new System.Drawing.Size(155, 25);
            this.lblRole.TabIndex = 0;
            this.lblRole.Text = "Administrator";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(53, 18);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(75, 75);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // btnDashboard
            // 
            this.btnDashboard.BackColor = System.Drawing.Color.DarkGreen;
            this.btnDashboard.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnDashboard.FlatAppearance.BorderSize = 0;
            this.btnDashboard.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDashboard.ForeColor = System.Drawing.Color.White;
            this.btnDashboard.Image = ((System.Drawing.Image)(resources.GetObject("btnDashboard.Image")));
            this.btnDashboard.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDashboard.Location = new System.Drawing.Point(0, 170);
            this.btnDashboard.Name = "btnDashboard";
            this.btnDashboard.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnDashboard.Size = new System.Drawing.Size(200, 45);
            this.btnDashboard.TabIndex = 0;
            this.btnDashboard.Text = " Dashboard";
            this.btnDashboard.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDashboard.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnDashboard.UseVisualStyleBackColor = false;
            this.btnDashboard.Click += new System.EventHandler(this.btnDashboard_Click_1);
            // 
            // panelLogo
            // 
            this.panelLogo.BackColor = System.Drawing.Color.Green;
            this.panelLogo.Controls.Add(this.lblid);
            this.panelLogo.Controls.Add(this.lblName);
            this.panelLogo.Controls.Add(this.lblRole);
            this.panelLogo.Controls.Add(this.pictureBox1);
            this.panelLogo.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelLogo.Location = new System.Drawing.Point(0, 0);
            this.panelLogo.Name = "panelLogo";
            this.panelLogo.Size = new System.Drawing.Size(200, 170);
            this.panelLogo.TabIndex = 1;
            // 
            // panelTitle
            // 
            this.panelTitle.BackColor = System.Drawing.Color.Green;
            this.panelTitle.Controls.Add(this.lblTitle);
            this.panelTitle.Controls.Add(this.lblUsername);
            this.panelTitle.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTitle.Location = new System.Drawing.Point(200, 0);
            this.panelTitle.Name = "panelTitle";
            this.panelTitle.Size = new System.Drawing.Size(978, 40);
            this.panelTitle.TabIndex = 10;
            // 
            // panelSlide
            // 
            this.panelSlide.AutoScroll = true;
            this.panelSlide.BackColor = System.Drawing.Color.Green;
            this.panelSlide.Controls.Add(this.btnSetting);
            this.panelSlide.Controls.Add(this.btnRule);
            this.panelSlide.Controls.Add(this.btnSForm);
            this.panelSlide.Controls.Add(this.btnLogout);
            this.panelSlide.Controls.Add(this.btnDashboard);
            this.panelSlide.Controls.Add(this.panelLogo);
            this.panelSlide.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelSlide.Location = new System.Drawing.Point(0, 0);
            this.panelSlide.Name = "panelSlide";
            this.panelSlide.Size = new System.Drawing.Size(200, 644);
            this.panelSlide.TabIndex = 9;
            // 
            // btnSetting
            // 
            this.btnSetting.BackColor = System.Drawing.Color.DarkGreen;
            this.btnSetting.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSetting.FlatAppearance.BorderSize = 0;
            this.btnSetting.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSetting.ForeColor = System.Drawing.Color.White;
            this.btnSetting.Image = ((System.Drawing.Image)(resources.GetObject("btnSetting.Image")));
            this.btnSetting.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSetting.Location = new System.Drawing.Point(0, 305);
            this.btnSetting.Name = "btnSetting";
            this.btnSetting.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnSetting.Size = new System.Drawing.Size(200, 45);
            this.btnSetting.TabIndex = 12;
            this.btnSetting.Text = " Setting";
            this.btnSetting.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSetting.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSetting.UseVisualStyleBackColor = false;
            this.btnSetting.Click += new System.EventHandler(this.btnSetting_Click_1);
            // 
            // btnRule
            // 
            this.btnRule.BackColor = System.Drawing.Color.DarkGreen;
            this.btnRule.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRule.FlatAppearance.BorderSize = 0;
            this.btnRule.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRule.ForeColor = System.Drawing.Color.White;
            this.btnRule.Image = ((System.Drawing.Image)(resources.GetObject("btnRule.Image")));
            this.btnRule.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRule.Location = new System.Drawing.Point(0, 260);
            this.btnRule.Name = "btnRule";
            this.btnRule.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnRule.Size = new System.Drawing.Size(200, 45);
            this.btnRule.TabIndex = 13;
            this.btnRule.Text = " Rules";
            this.btnRule.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRule.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnRule.UseVisualStyleBackColor = false;
            this.btnRule.Click += new System.EventHandler(this.btnRule_Click);
            // 
            // btnSForm
            // 
            this.btnSForm.BackColor = System.Drawing.Color.DarkGreen;
            this.btnSForm.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSForm.FlatAppearance.BorderSize = 0;
            this.btnSForm.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSForm.ForeColor = System.Drawing.Color.White;
            this.btnSForm.Image = ((System.Drawing.Image)(resources.GetObject("btnSForm.Image")));
            this.btnSForm.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSForm.Location = new System.Drawing.Point(0, 215);
            this.btnSForm.Name = "btnSForm";
            this.btnSForm.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnSForm.Size = new System.Drawing.Size(200, 45);
            this.btnSForm.TabIndex = 14;
            this.btnSForm.Text = " Student Form";
            this.btnSForm.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSForm.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSForm.UseVisualStyleBackColor = false;
            this.btnSForm.Click += new System.EventHandler(this.btnSForm_Click);
            // 
            // btnLogout
            // 
            this.btnLogout.BackColor = System.Drawing.Color.Maroon;
            this.btnLogout.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnLogout.FlatAppearance.BorderSize = 0;
            this.btnLogout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogout.ForeColor = System.Drawing.Color.White;
            this.btnLogout.Image = ((System.Drawing.Image)(resources.GetObject("btnLogout.Image")));
            this.btnLogout.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLogout.Location = new System.Drawing.Point(0, 599);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnLogout.Size = new System.Drawing.Size(200, 45);
            this.btnLogout.TabIndex = 10;
            this.btnLogout.Text = "Logout";
            this.btnLogout.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLogout.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnLogout.UseVisualStyleBackColor = false;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click_1);
            // 
            // lblid
            // 
            this.lblid.AutoSize = true;
            this.lblid.ForeColor = System.Drawing.Color.White;
            this.lblid.Location = new System.Drawing.Point(3, 18);
            this.lblid.Name = "lblid";
            this.lblid.Size = new System.Drawing.Size(31, 25);
            this.lblid.TabIndex = 1;
            this.lblid.Text = "id";
            this.lblid.Visible = false;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1178, 644);
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.panelTitle);
            this.Controls.Add(this.panelSlide);
            this.Font = new System.Drawing.Font("Century Gothic", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Hostel Management";
            this.Load += new System.EventHandler(this.MainForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panelLogo.ResumeLayout(false);
            this.panelLogo.PerformLayout();
            this.panelTitle.ResumeLayout(false);
            this.panelTitle.PerformLayout();
            this.panelSlide.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Label lblTitle;
        public System.Windows.Forms.Label lblName;
        public System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.Label lblRole;
        private System.Windows.Forms.PictureBox pictureBox1;
        public System.Windows.Forms.Button btnDashboard;
        private System.Windows.Forms.Panel panelLogo;
        private System.Windows.Forms.Panel panelTitle;
        private System.Windows.Forms.Panel panelSlide;
        private System.Windows.Forms.Button btnSetting;
        private System.Windows.Forms.Button btnRule;
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.Button btnSForm;
        public System.Windows.Forms.Label lblid;
    }
}