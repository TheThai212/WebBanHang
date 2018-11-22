using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanTri2_Users : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter adapter;
    DataSet ds;
    SqlCommand cmd;
    string cs;
    string str = "Id";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGridView();

        }
    }

    protected void FillGridView()
    {
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        try
        {
            conn = new SqlConnection(cs);
            adapter = new SqlDataAdapter
           ("select * from users order by " + str, conn);
            ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            //Label1.Text = "ERROR :: " + ex.Message;
        }
        finally
        {
            ds.Dispose();
            conn.Dispose();
        }
    }
    //-- Thêm vào DB
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string insert = "insert into users(Name,Pass) values(@Name,@Pass)";// bỏ id đi do mình đặt id tự tăng nên sẽ ko nhập
        string dem = "Select Count(*) from users";
        string ktra = "Select Count(*) from users where Name ='" + txt_user.Text + "'";
        //-- khởi tạo kết nối DB
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(cs);
        conn.Open();
        //--tính số bản ghi trong sql
        SqlCommand tinh = new SqlCommand(dem, conn);
        int t = (int)tinh.ExecuteScalar();
        //--Ktra có trùng User
        SqlCommand kt = new SqlCommand(ktra, conn);
        int c = (int)kt.ExecuteScalar();
        if (c > 0) { txtLoi.Text = "Tồn tại"; }
        else
        {
            //-- thêm vào SQL
            cmd = new SqlCommand(insert, conn);
            //cmd.Parameters.AddWithValue("@Id", t + 1); //id này có lỗi xóa 1 ptu bất kì nhập thêm ko đc vì trùng id
            cmd.Parameters.AddWithValue("@Name", txt_user.Text);
            cmd.Parameters.AddWithValue("@Pass", txt_pass.Text);
            cmd.ExecuteNonQuery();
            FillGridView();
            txt_user.Text = "";
            txtLoi.Text = "";
        }

        conn.Close();
    }
    //-- Xóa phần tử trong DB
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string deleteQuery = "delete from users where Id=" + userid;
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(cs);
        cmd = new SqlCommand(deleteQuery, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView1.EditIndex = -1;
        FillGridView();
    }
    //-- Sự kiện nút Edit
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillGridView();
    }

    //--- Sự kiện nút Update
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        TextBox txtName = (TextBox)row.Cells[1].Controls[0];
        TextBox txtPass = (TextBox)row.Cells[2].Controls[0];
        string updateQuery = "update users set Name='" + txtName.Text
       + "', Pass='" + txtPass.Text + "' where Id=" + userid;
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(cs);
        cmd = new SqlCommand(updateQuery, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView1.EditIndex = -1;
        FillGridView();
    }
    //-- sự kiện Cancel
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGridView();
    }
    // Đoạn CODE này để dấu bài khi đi thi :)
    //-- sự kiện trang
    //-- Tạo 1 kiểu Fill dữ liệu khác
    private void FillGridView1(string str)
    {
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        try
        {
            conn = new SqlConnection(cs);
            adapter = new SqlDataAdapter
           ("select * from users order by " + str, conn);
            ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
        finally
        {
            ds.Dispose();
            conn.Dispose();
        }
    }
    //-- sang trang sau và AllowPaging= true
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGridView1(str);
    }

    //-- Sắp xếp theo mục từ trên xuống và Allow sorting = true;
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        str = e.SortExpression;
        FillGridView1(str);
    }
    //-- Xóa nhiều bản ghi( phải tạo thêm 1 col có checkbox ở Gridview)

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gridrow in GridView1.Rows)
        {
            CheckBox chkDelete = (CheckBox)gridrow.
            FindControl("CheckBox1");
            if (chkDelete.Checked)
            {
                int id = Convert.ToInt32(gridrow.Cells[0].Text);
                DeleteRecord(id);
            }
        }
        FillGridView();
    }
    protected void DeleteRecord(int ID)
    {
        string deleteQuery = "delete from users where Id=" + ID;
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(cs);
        cmd = new SqlCommand(deleteQuery, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    //-- Lọc bản ghi vào bản ghi nào có Name= "admin"
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string ten = (string)DataBinder.Eval(e.Row.DataItem, "Name");
            if (ten == "admin")
                e.Row.BackColor = System.Drawing.Color.LightGreen;
        }
    }
    //--Hết code để dấu
    protected void btn_huy_Click(object sender, EventArgs e)
    {
        txt_user.Text = "";
        txt_pass.Text = "";
        txt_repass.Text = "";

    }
}