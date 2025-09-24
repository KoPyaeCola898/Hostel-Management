namespace Student_Hostel_Management
{
    partial class Student
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Student));
            this.panelMain = new System.Windows.Forms.Panel();
            this.lblTitle = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.lblUsername = new System.Windows.Forms.Label();
            this.lblRole = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnForm = new System.Windows.Forms.Button();
            this.panelLogo = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.lblid = new System.Windows.Forms.Label();
            this.panelTitle = new System.Windows.Forms.Panel();
            this.panelSlide = new System.Windows.Forms.Panel();
            this.btnSetting = new System.Windows.Forms.Button();
            this.btnRule = new System.Windows.Forms.Button();
            this.btnLogout = new System.Windows.Forms.Button();
            this.picClose = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panelLogo.SuspendLayout();
            this.panelTitle.SuspendLayout();
            this.panelSlide.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picClose)).BeginInit();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.BackColor = System.Drawing.Color.White;
            this.panelMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelMain.Location = new System.Drawing.Point(200, 40);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(978, 604);
            this.panelMain.TabIndex = 8;
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
            this.lblName.Location = new System.Drawing.Point(95, 108);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(76, 25);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "name";
            // 
            // lblUsername
            // 
            this.lblUsername.AutoSize = true;
            this.lblUsername.ForeColor = System.Drawing.Color.White;
            this.lblUsername.Location = new System.Drawing.Point(95, 142);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(121, 25);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Username";
            // 
            // lblRole
            // 
            this.lblRole.AutoSize = true;
            this.lblRole.Font = new System.Drawing.Font("Century Gothic", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRole.ForeColor = System.Drawing.Color.White;
            this.lblRole.Location = new System.Drawing.Point(3, 108);
            this.lblRole.Name = "lblRole";
            this.lblRole.Size = new System.Drawing.Size(90, 26);
            this.lblRole.TabIndex = 0;
            this.lblRole.Text = "Name :";
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
            // btnForm
            // 
            this.btnForm.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnForm.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnForm.FlatAppearance.BorderSize = 0;
            this.btnForm.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnForm.ForeColor = System.Drawing.Color.White;
            this.btnForm.Image = ((System.Drawing.Image)(resources.GetObject("btnForm.Image")));
            this.btnForm.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnForm.Location = new System.Drawing.Point(0, 170);
            this.btnForm.Name = "btnForm";
            this.btnForm.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnForm.Size = new System.Drawing.Size(200, 45);
            this.btnForm.TabIndex = 0;
            this.btnForm.Text = " Hostel Form";
            this.btnForm.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnForm.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnForm.UseVisualStyleBackColor = false;
            this.btnForm.Click += new System.EventHandler(this.btnForm_Click);
            // 
            // panelLogo
            // 
            this.panelLogo.BackColor = System.Drawing.Color.Teal;
            this.panelLogo.Controls.Add(this.lblUsername);
            this.panelLogo.Controls.Add(this.label1);
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
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(3, 142);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(132, 26);
            this.label1.TabIndex = 3;
            this.label1.Text = "Username :";
            // 
            // lblid
            // 
            this.lblid.AutoSize = true;
            this.lblid.ForeColor = System.Drawing.Color.White;
            this.lblid.Location = new System.Drawing.Point(9, 15);
            this.lblid.Name = "lblid";
            this.lblid.Size = new System.Drawing.Size(31, 25);
            this.lblid.TabIndex = 2;
            this.lblid.Text = "id";
            this.lblid.Visible = false;
            // 
            // panelTitle
            // 
            this.panelTitle.BackColor = System.Drawing.Color.Teal;
            this.panelTitle.Controls.Add(this.picClose);
            this.panelTitle.Controls.Add(this.lblTitle);
            this.panelTitle.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTitle.Location = new System.Drawing.Point(200, 0);
            this.panelTitle.Name = "panelTitle";
            this.panelTitle.Size = new System.Drawing.Size(978, 40);
            this.panelTitle.TabIndex = 7;
            // 
            // panelSlide
            // 
            this.panelSlide.AutoScroll = true;
            this.panelSlide.BackColor = System.Drawing.Color.Teal;
            this.panelSlide.Controls.Add(this.btnSetting);
            this.panelSlide.Controls.Add(this.btnRule);
            this.panelSlide.Controls.Add(this.btnLogout);
            this.panelSlide.Controls.Add(this.btnForm);
            this.panelSlide.Controls.Add(this.panelLogo);
            this.panelSlide.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelSlide.Location = new System.Drawing.Point(0, 0);
            this.panelSlide.Name = "panelSlide";
            this.panelSlide.Size = new System.Drawing.Size(200, 644);
            this.panelSlide.TabIndex = 6;
            // 
            // btnSetting
            // 
            this.btnSetting.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnSetting.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSetting.FlatAppearance.BorderSize = 0;
            this.btnSetting.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSetting.ForeColor = System.Drawing.Color.White;
            this.btnSetting.Image = ((System.Drawing.Image)(resources.GetObject("btnSetting.Image")));
            this.btnSetting.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSetting.Location = new System.Drawing.Point(0, 260);
            this.btnSetting.Name = "btnSetting";
            this.btnSetting.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.btnSetting.Size = new System.Drawing.Size(200, 45);
            this.btnSetting.TabIndex = 12;
            this.btnSetting.Text = " Setting";
            this.btnSetting.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSetting.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSetting.UseVisualStyleBackColor = false;
            this.btnSetting.Click += new System.EventHandler(this.btnSetting_Click);
            // 
            // btnRule
            // 
            this.btnRule.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnRule.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRule.FlatAppearance.BorderSize = 0;
            this.btnRule.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRule.ForeColor = System.Drawing.Color.White;
            this.btnRule.Image = ((System.Drawing.Image)(resources.GetObject("btnRule.Image")));
            this.btnRule.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRule.Location = new System.Drawing.Point(0, 215);
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
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // picClose
            // 
            this.picClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.picClose.Image = ((System.Drawing.Image)(resources.GetObject("picClose.Image")));
            this.picClose.Location = new System.Drawing.Point(945, 2);
            this.picClose.Name = "picClose";
            this.picClose.Size = new System.Drawing.Size(30, 35);
            this.picClose.TabIndex = 2;
            this.picClose.TabStop = false;
            this.picClose.Click += new System.EventHandler(this.picClose_Click);
            // 
            // Student
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1178, 644);
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.panelTitle);
            this.Controls.Add(this.panelSlide);
            this.Font = new System.Drawing.Font("Century Gothic", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Student";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Student";
            this.Load += new System.EventHandler(this.Student_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panelLogo.ResumeLayout(false);
            this.panelLogo.PerformLayout();
            this.panelTitle.ResumeLayout(false);
            this.panelSlide.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picClose)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Label lblTitle;
        public System.Windows.Forms.Label lblName;
        public System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.Label lblRole;
        private System.Windows.Forms.PictureBox pictureBox1;
        public System.Windows.Forms.Button btnForm;
        private System.Windows.Forms.Panel panelLogo;
        private System.Windows.Forms.Panel panelTitle;
        private System.Windows.Forms.Panel panelSlide;
        private System.Windows.Forms.Button btnSetting;
        private System.Windows.Forms.Button btnRule;
        private System.Windows.Forms.Button btnLogout;
        public System.Windows.Forms.Label lblid;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox picClose;
    }
}