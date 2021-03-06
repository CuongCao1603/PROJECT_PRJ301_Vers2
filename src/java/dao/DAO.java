/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author HLC_2021
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Product getLast() {
        String query = "select top 1 * from product order by id desc";
        try {
            conn = new DBContext().getConnection();// mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where cateID = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Product getProductByID(String id) {

        String query = "select * from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where [name] like ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Account login(String user, String pass) {
        String query = "select * from Account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from Account where [user] = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    // Kh??ng tr??? v??? gi?? tr??? n??n d??ng h??m void
    public void signup(String user, String pass) {
        String query = "insert into Account\n"
                + "values(?, ?, 0,0)";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);

            // Kh??ng tr??? v??? gi?? tr??? n??n ch??? c???n update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product \n"
                + "where [sell_ID] = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            // Do id l???y v??? l?? ki???u Int
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);

            // Kh??ng tr??? v??? gi?? tr??? n??n ch??? c???n update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String image, String price, String tilte,
            String description, String category, int sId) {
        String query = "INSERT [dbo].[product]"
                + " ([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + " VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, tilte);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sId);
            // Kh??ng tr??? v??? gi?? tr??? n??n ch??? c???n update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price, String tilte,
            String description, String category, String pId) {
        String query = "update product\n"
                + " set[name] = ?,\n"
                + "[image] = ?,\n"
                + "[price] = ?,\n"
                + "[title] = ?,\n"
                + "[description] = ?,\n"
                + "[cateID] = ?\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, tilte);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pId);
            // Kh??ng tr??? v??? gi?? tr??? n??n ch??? c???n update
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        List<Product> listPC = dao.getAllProduct();
        Product p = dao.getProductByID("2");

        for (Product o : listPC) {
            System.out.println(o);
        }

    }

    public List<Product> getTop3() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from product";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getNext3Product(int amount) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT*\n"
                + "FROM\n"
                + "   product\n"
                + "ORDER BY\n"
                + "   id\n"
                + "OFFSET ? ROWS \n"
                + "FETCH NEXT 3 ROWS ONLY";
        try {
            conn = new DBContext().getConnection(); // Mo ket no voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

}
