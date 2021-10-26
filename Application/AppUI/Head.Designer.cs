namespace AppUI
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.menutab = new System.Windows.Forms.Panel();
            this.check_button = new System.Windows.Forms.Button();
            this.pay_button = new System.Windows.Forms.Button();
            this.cart_button = new System.Windows.Forms.Button();
            this.submenu = new System.Windows.Forms.Panel();
            this.game_button = new System.Windows.Forms.Button();
            this.acc_button = new System.Windows.Forms.Button();
            this.store_button = new System.Windows.Forms.Button();
            this.home_button = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panelchildform = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.menutab.SuspendLayout();
            this.submenu.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panelchildform.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // menutab
            // 
            this.menutab.BackColor = System.Drawing.Color.Black;
            this.menutab.Controls.Add(this.check_button);
            this.menutab.Controls.Add(this.pay_button);
            this.menutab.Controls.Add(this.cart_button);
            this.menutab.Controls.Add(this.submenu);
            this.menutab.Controls.Add(this.store_button);
            this.menutab.Controls.Add(this.home_button);
            this.menutab.Controls.Add(this.panel1);
            this.menutab.Dock = System.Windows.Forms.DockStyle.Left;
            this.menutab.Location = new System.Drawing.Point(0, 0);
            this.menutab.Name = "menutab";
            this.menutab.Size = new System.Drawing.Size(180, 507);
            this.menutab.TabIndex = 0;
            // 
            // check_button
            // 
            this.check_button.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(50)))));
            this.check_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.check_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.check_button.FlatAppearance.BorderSize = 0;
            this.check_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkOrchid;
            this.check_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.check_button.Font = new System.Drawing.Font("Comic Sans MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.check_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.check_button.Image = ((System.Drawing.Image)(resources.GetObject("check_button.Image")));
            this.check_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.check_button.Location = new System.Drawing.Point(0, 426);
            this.check_button.Name = "check_button";
            this.check_button.Size = new System.Drawing.Size(180, 47);
            this.check_button.TabIndex = 13;
            this.check_button.Text = "CheckStatus";
            this.check_button.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.check_button.UseVisualStyleBackColor = false;
            this.check_button.Click += new System.EventHandler(this.check_button_Click);
            // 
            // pay_button
            // 
            this.pay_button.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(50)))));
            this.pay_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pay_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.pay_button.FlatAppearance.BorderSize = 0;
            this.pay_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkOrchid;
            this.pay_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.pay_button.Font = new System.Drawing.Font("Comic Sans MS", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pay_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.pay_button.Image = ((System.Drawing.Image)(resources.GetObject("pay_button.Image")));
            this.pay_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.pay_button.Location = new System.Drawing.Point(0, 379);
            this.pay_button.Name = "pay_button";
            this.pay_button.Size = new System.Drawing.Size(180, 47);
            this.pay_button.TabIndex = 12;
            this.pay_button.Text = "Payment";
            this.pay_button.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.pay_button.UseVisualStyleBackColor = false;
            this.pay_button.Click += new System.EventHandler(this.pay_button_Click);
            // 
            // cart_button
            // 
            this.cart_button.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(10)))));
            this.cart_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.cart_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.cart_button.FlatAppearance.BorderSize = 0;
            this.cart_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkViolet;
            this.cart_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cart_button.Font = new System.Drawing.Font("Comic Sans MS", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cart_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.cart_button.Image = ((System.Drawing.Image)(resources.GetObject("cart_button.Image")));
            this.cart_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.cart_button.Location = new System.Drawing.Point(0, 332);
            this.cart_button.Name = "cart_button";
            this.cart_button.Size = new System.Drawing.Size(180, 47);
            this.cart_button.TabIndex = 11;
            this.cart_button.Text = "In Cart";
            this.cart_button.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.cart_button.UseVisualStyleBackColor = false;
            this.cart_button.Click += new System.EventHandler(this.cart_button_Click);
            // 
            // submenu
            // 
            this.submenu.BackColor = System.Drawing.Color.Indigo;
            this.submenu.Controls.Add(this.game_button);
            this.submenu.Controls.Add(this.acc_button);
            this.submenu.Dock = System.Windows.Forms.DockStyle.Top;
            this.submenu.Location = new System.Drawing.Point(0, 222);
            this.submenu.Name = "submenu";
            this.submenu.Size = new System.Drawing.Size(180, 110);
            this.submenu.TabIndex = 10;
            // 
            // game_button
            // 
            this.game_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.game_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.game_button.FlatAppearance.BorderSize = 0;
            this.game_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkViolet;
            this.game_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.game_button.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.game_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.game_button.Image = ((System.Drawing.Image)(resources.GetObject("game_button.Image")));
            this.game_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.game_button.Location = new System.Drawing.Point(0, 55);
            this.game_button.Name = "game_button";
            this.game_button.Size = new System.Drawing.Size(180, 55);
            this.game_button.TabIndex = 1;
            this.game_button.Text = "        -GAME";
            this.game_button.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.game_button.UseVisualStyleBackColor = true;
            this.game_button.Click += new System.EventHandler(this.game_button_Click_1);
            // 
            // acc_button
            // 
            this.acc_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.acc_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.acc_button.FlatAppearance.BorderSize = 0;
            this.acc_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkViolet;
            this.acc_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.acc_button.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.acc_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.acc_button.Image = ((System.Drawing.Image)(resources.GetObject("acc_button.Image")));
            this.acc_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.acc_button.Location = new System.Drawing.Point(0, 0);
            this.acc_button.Name = "acc_button";
            this.acc_button.Size = new System.Drawing.Size(180, 55);
            this.acc_button.TabIndex = 0;
            this.acc_button.Text = "        -ACCESARIES";
            this.acc_button.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.acc_button.UseVisualStyleBackColor = true;
            this.acc_button.Click += new System.EventHandler(this.acc_button_Click_1);
            // 
            // store_button
            // 
            this.store_button.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(5)))));
            this.store_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.store_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.store_button.FlatAppearance.BorderSize = 0;
            this.store_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkOrchid;
            this.store_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.store_button.Font = new System.Drawing.Font("Comic Sans MS", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.store_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.store_button.Image = ((System.Drawing.Image)(resources.GetObject("store_button.Image")));
            this.store_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.store_button.Location = new System.Drawing.Point(0, 175);
            this.store_button.Name = "store_button";
            this.store_button.Size = new System.Drawing.Size(180, 47);
            this.store_button.TabIndex = 9;
            this.store_button.Text = "Store";
            this.store_button.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.store_button.UseVisualStyleBackColor = false;
            this.store_button.Click += new System.EventHandler(this.store_button_Click_1);
            // 
            // home_button
            // 
            this.home_button.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.home_button.Cursor = System.Windows.Forms.Cursors.Hand;
            this.home_button.Dock = System.Windows.Forms.DockStyle.Top;
            this.home_button.FlatAppearance.BorderSize = 0;
            this.home_button.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkOrchid;
            this.home_button.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.home_button.Font = new System.Drawing.Font("Comic Sans MS", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.home_button.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.home_button.Image = ((System.Drawing.Image)(resources.GetObject("home_button.Image")));
            this.home_button.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.home_button.Location = new System.Drawing.Point(0, 128);
            this.home_button.Name = "home_button";
            this.home_button.Size = new System.Drawing.Size(180, 47);
            this.home_button.TabIndex = 8;
            this.home_button.Text = "Home";
            this.home_button.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.home_button.UseVisualStyleBackColor = false;
            this.home_button.Click += new System.EventHandler(this.home_button_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(180, 128);
            this.panel1.TabIndex = 7;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(0, 0);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(180, 128);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // panelchildform
            // 
            this.panelchildform.AutoSize = true;
            this.panelchildform.BackColor = System.Drawing.Color.AntiqueWhite;
            this.panelchildform.Controls.Add(this.label1);
            this.panelchildform.Controls.Add(this.pictureBox2);
            this.panelchildform.Controls.Add(this.flowLayoutPanel1);
            this.panelchildform.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelchildform.Location = new System.Drawing.Point(180, 0);
            this.panelchildform.Name = "panelchildform";
            this.panelchildform.Size = new System.Drawing.Size(589, 507);
            this.panelchildform.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Comic Sans MS", 21.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(88, 318);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(349, 40);
            this.label1.TabIndex = 7;
            this.label1.Text = "BEAR BAE SHOP SHOP";
            // 
            // pictureBox2
            // 
            this.pictureBox2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(144, 109);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(256, 189);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 6;
            this.pictureBox2.TabStop = false;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoScroll = true;
            this.flowLayoutPanel1.AutoSize = true;
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(589, 0);
            this.flowLayoutPanel1.TabIndex = 5;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(769, 507);
            this.Controls.Add(this.panelchildform);
            this.Controls.Add(this.menutab);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Shop Shop";
            this.menutab.ResumeLayout(false);
            this.submenu.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panelchildform.ResumeLayout(false);
            this.panelchildform.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel menutab;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel submenu;
        private System.Windows.Forms.Button acc_button;
        private System.Windows.Forms.Button store_button;
        private System.Windows.Forms.Button home_button;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button pay_button;
        private System.Windows.Forms.Button cart_button;
        private System.Windows.Forms.Button game_button;
        private System.Windows.Forms.Panel panelchildform;
        private System.Windows.Forms.Button check_button;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox2;
    }
}

