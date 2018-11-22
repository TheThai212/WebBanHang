using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanTri2_SanPham : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter adapter;
    DataSet ds;
    SqlCommand cmd;
    string cs;
    string str = "masp";
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
           ("select * from sanpham order by " + str, conn);
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
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string insert = "insert into sanpham(masp,tensp,motasp,giasp,hinhanhsp,tinhtrang,madm) values(@masp,@tensp,@motasp,@giasp,@hinhanhsp,@tinhtrang,@madm)";
        string dem = "Select Count(*) from sanpham";
        string ktra = "Select Count(*) from sanpham where masp ='" + txt_masp.Text + "'";
        //-- lưu ảnh
        //Get Filename from fileupload control
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);

        //-- khởi tạo kết nối DB
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(cs);
        conn.Open();
        //--tính số bản ghi trong sql
        SqlCommand tinh = new SqlCommand(dem, conn);
        int t = (int)tinh.ExecuteScalar();
        //--Ktra có trùng mã sản phẩm
        SqlCommand kt = new SqlCommand(ktra, conn);
        int c = (int)kt.ExecuteScalar();
        if (c > 0) { txtLoi.Text = "Tồn tại"; }
        else
        {
            //-- thêm vào SQL
            cmd = new SqlCommand(insert, conn);
            cmd.Parameters.AddWithValue("@masp", txt_masp.Text); //id này có lỗi xóa 1 ptu bất kì nhập thêm ko đc vì trùng id
            cmd.Parameters.AddWithValue("@tensp", txt_tensp.Text);
            cmd.Parameters.AddWithValue("@motasp", txt_motasp.Text);
            cmd.Parameters.AddWithValue("@giasp", txt_gia.Text);
            cmd.Parameters.AddWithValue("@hinhanhsp", "AnhSanPham/" + filename);
            cmd.Parameters.AddWithValue("@tinhtrang", txt_tinhtrang.Text);
            cmd.Parameters.AddWithValue("@madm", txt_madm.Text);
            cmd.ExecuteNonQuery();
            //Save images into Images folder
            FileUpload1.SaveAs(Server.MapPath("AnhSanPham/" + filename));
            FillGridView();
            txt_masp.Text = "";
            txtLoi.Text = "";
            txt_tensp.Text = "";
            txt_gia.Text = "";
            txt_motasp.Text = "";
            txt_tinhtrang.Text = "";
            txt_madm.Text = "";
        }

        conn.Close();
    }
    //-- Xóa phần tử trong DB
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int masp = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string deleteQuery = "delete from sanpham where masp=" + masp;
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
        TextBox txtTensp = (TextBox)row.Cells[1].Controls[0];
        TextBox txtMota = (TextBox)row.Cells[2].Controls[0];
        TextBox txtGia = (TextBox)row.Cells[3].Controls[0];
        TextBox txtTinhtrang = (TextBox)row.Cells[5].Controls[0];
        TextBox txtMadm = (TextBox)row.Cells[6].Controls[0];
        string updateQuery = "update sanpham set tensp='" + txtTensp.Text + "', motasp='" + txtMota.Text + "', giasp='" + txtGia.Text + "', tinhtrang='" + txtTinhtrang.Text + "', madm='" + txtMadm.Text + "' where masp=" + userid;
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
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
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
           ("select * from sanpham order by " + str, conn);
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
        string deleteQuery = "delete from sanpham where masp=" + ID;
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(cs);
        cmd = new SqlCommand(deleteQuery, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Double Total = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Double sal = (Double)DataBinder.Eval(e.Row.DataItem, "giasp");
            Total += sal;
            if (sal >= 3000000)
                e.Row.BackColor = System.Drawing.Color.LightGreen;
        }
    }
    protected void btn_huy_Click(object sender, EventArgs e)
    {
        txt_masp.Text = "";
        txt_tensp.Text = "";
        txt_motasp.Text = "";
        txt_gia.Text = "";
        txt_tinhtrang.Text = "";
        txt_madm.Text = "";
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        filename = "";
    }
}