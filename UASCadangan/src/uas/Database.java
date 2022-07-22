/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uas;

import java.io.IOException;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alwan
 * Class ini digunakan untuk berkomunikasi dengan database. 
 * Class ini menerapkan design pattern singleton pada method getInstance()
 */
public class Database implements Serializable {
    
    public static Database instance; 
    private final String DB_TYPE = "mysql"; 
    private final String DB_HOST = "localhost"; 
    private final String DB_PORT = "3306"; 
    private final String DB_NAME = "uas"; 
    private final String DB_USER = "root"; 
    private final String DB_PASS = ""; 
    private Database(){ 
        
}
    
    //method ini me-return instance
    
  public static synchronized Database getInstance(){
      
      if(instance == null){
          
          instance = new Database();
      }
      return instance;
  }
  
  //method ini untuk registrasi mahasiswa
  
  public void registMahasiswa(Mahasiswa mahasiswa)throws SQLException, IOException{
      Connection conn = getConnection();
   
      try{
          String sql="INSERT INTO login(nim,password,nama,kelas) VALUES(?,?,?,?)";
      
      PreparedStatement pstmt = conn.prepareStatement(sql); 
      pstmt.setString(1, mahasiswa.getNim()); 
      pstmt.setString(2, mahasiswa.getPassword());
      pstmt.setString(3, mahasiswa.getNama());
      pstmt.setString(4, mahasiswa.getKelas());
      pstmt.executeUpdate();

      } catch(SQLException ex){ 
          throw ex; 
      } finally{ 
          if(conn!=null){ 
              conn.close(); 
          } 
      }
      
      }
  
  //method ini untuk menghapus data IPKM
   public void deleteIPKM(String id) throws SQLException{
       
       Connection conn = getConnection();
       
      try{
          String sql ="DELETE FROM ipkm  WHERE id = ?";
          PreparedStatement pstmt = conn.prepareStatement(sql);
          
          pstmt.setString(1, id); 
          
          
          pstmt.executeUpdate(); 
          
      
      }catch(SQLException ex){
          throw ex;
      }finally{
          if(conn!=null){ 
              conn.close(); 
          }
      }
  }
  
  //method ini untuk memperbaharui nilai 
  
  public void updateIPKM(Mahasiswa data) throws SQLException{
       
       Connection conn = getConnection();
       //String nim = data.getNim();
      try{
          String sql ="UPDATE ipkm set namaKegiatan=?,tanggalKegiatan=?,tempatKegiatan=?,dimensi=?,kategori=?,subKategori=? WHERE nim = ? and id = ?";
          PreparedStatement pstmt = conn.prepareStatement(sql);
          
          pstmt.setString(1, data.getNamaKegiatan()); 
          pstmt.setString(2, data.getTanggalKegiatan());
          pstmt.setString(3, data.getTempatKegiatan());
          pstmt.setString(4, data.getDimensi());
          pstmt.setString(5, data.getKategori());
          pstmt.setString(6, data.getSubKategori());
          pstmt.setString(7, data.getNim());
          pstmt.setString(8, data.getId());
          
          pstmt.executeUpdate(); 
          
      
      }catch(SQLException ex){
          throw ex;
      }finally{
          if(conn!=null){ 
              conn.close(); 
          }
      }
  }
  
  //method ini untuk memasukan nilai ipkm
  
  public void insertIPKM(Mahasiswa data) throws SQLException{
      
      Connection conn = getConnection();
      try{
          String sql ="INSERT INTO ipkm(namaKegiatan,tanggalKegiatan,tempatKegiatan,dimensi,kategori,subKategori,nim) VALUES(?,?,?,?,?,?,?)";
          PreparedStatement pstmt = conn.prepareStatement(sql);
          
          pstmt.setString(1, data.getNamaKegiatan()); 
          pstmt.setString(2, data.getTanggalKegiatan());
          pstmt.setString(3, data.getTempatKegiatan());
          pstmt.setString(4, data.getDimensi());
          pstmt.setString(5, data.getKategori());
          pstmt.setString(6, data.getSubKategori());
          pstmt.setString(7, data.getNim());
          pstmt.executeUpdate(); 
          
      
      }catch(SQLException ex){
          throw ex;
      }finally{
          if(conn!=null){ 
              conn.close(); 
          }
      }
  }
 
  //method ini untuk membuat koneksi
  private Connection getConnection() throws SQLException { 
      
      
      return DriverManager.getConnection("jdbc:"+DB_TYPE+"://"+DB_HOST+":"+DB_PORT+"/"+DB_NAME,DB_USER,DB_PASS); 
      
      
    
  }
  
  //method ini untuk mereturn id
  public String getId(String nim,String nama, String sk, String tempat) throws SQLException{
      
     
      String id = null; 
      
     Connection conn = getConnection(); 
     try{ 
         
         
     String sql ="SELECT * FROM ipkm WHERE nim = '" +nim+"'and namaKegiatan = '" +nama+"' and subKategori = '" +sk+"' and tempatKegiatan ='" +tempat+"'";     
     Statement pstmt = conn.createStatement(); 
     
     ResultSet rs = pstmt.executeQuery(sql);
 
     
     while(rs.next()){ 
     
   
     id = rs.getString("id");
    
     
     
     
     } 
     } catch(SQLException ex){
             throw ex;
             }finally{
                     if(conn!=null){
                     conn.close();
                     }
             }
        return id;
      
  }
  
  //method ini untuk mengambil nilai2 yang diperlukan dalam tabel
  public List<Mahasiswa> getListIPKM(String nim) throws SQLException, IOException {
     List<Mahasiswa> mhsList = new ArrayList<>(); 
     ArrayList<String> tgl = new ArrayList<>(); 
     Connection conn = getConnection(); 
     try{ 
         
         
     String sql ="SELECT * FROM ipkm WHERE nim = '" +nim+"'";     
     Statement pstmt = conn.createStatement(); 
     
     ResultSet rs = pstmt.executeQuery(sql);
     //.setString(1,nim);
     
     while(rs.next()){ 
     
     Mahasiswa mhs = new Mahasiswa(); 
    mhs.setNim(rs.getString("nim"));      
 
     removeArray(tgl);
     String[] tanggal = rs.getString("tanggalKegiatan").split(" ");
     tgl.add(tanggal[1]+" ");
     tgl.add(tanggal[2]+" ");
     tgl.add(tanggal[5]);
     
     mhs.setId(rs.getString("id"));
     mhs.setNamaKegiatan(rs.getString("namaKegiatan"));
     mhs.setTanggalKegiatan(tgl.toString());
     mhs.setTempatKegiatan(rs.getString("tempatKegiatan"));
     mhs.setDimensi("dimensi");
     mhs.setKategori("kategori");
     mhs.setSubKategori(rs.getString("subkategori"));
     
     
     mhsList.add(mhs);
     } 
     } catch(SQLException ex){
             throw ex;
             }finally{
                     if(conn!=null){
                     conn.close();
                     }
             }
        return mhsList;
  }
  
  //method ini dipakai untuk fungsi pencarian
  
  public List<Mahasiswa> getSearchIPKM(String cari,String nim) throws SQLException, IOException {
     List<Mahasiswa> mhsList = new ArrayList<>(); 
     Connection conn = getConnection(); 
     try{ 
         
         
     String sql ="SELECT * FROM ipkm WHERE namaKegiatan LIKE '%" +cari+"%' AND nim='" +nim+"'";     
     Statement pstmt = conn.createStatement(); 
     
     ResultSet rs = pstmt.executeQuery(sql);
     
     
     while(rs.next()){ 
     
     Mahasiswa mhs = new Mahasiswa(); 

     
     mhs.setNamaKegiatan(rs.getString("namaKegiatan"));
     mhs.setTanggalKegiatan(rs.getString("tanggalKegiatan"));
     mhs.setTempatKegiatan(rs.getString("tempatKegiatan"));

     mhs.setSubKategori(rs.getString("subkategori"));
     
     
     mhsList.add(mhs);
     } 
     } catch(SQLException ex){
             throw ex;
             }finally{
                     if(conn!=null){
                     conn.close();
                     }
             }
        return mhsList;
  }
  
  //method ini dipakai untuk fungsi filter tahun
  
  public List<Mahasiswa> getTahunIPKM(String cari,String nim) throws SQLException, IOException {
     List<Mahasiswa> mhsList = new ArrayList<>(); 
     ArrayList<String> tgl = new ArrayList<>(); 
     Connection conn = getConnection(); 
     try{ 
         
         
     String sql ="SELECT * FROM ipkm WHERE tanggalKegiatan LIKE '%" +cari+"%' AND nim='" +nim+"'";     
     Statement pstmt = conn.createStatement(); 
     
     ResultSet rs = pstmt.executeQuery(sql);
     //.setString(1,nim);
     
     while(rs.next()){ 
     
     Mahasiswa mhs = new Mahasiswa(); 
     mhs.setNim(rs.getString("nim")); 

     removeArray(tgl);
     String[] tanggal = rs.getString("tanggalKegiatan").split(" ");
     tgl.add(tanggal[1]+" ");
     tgl.add(tanggal[2]+" ");
     tgl.add(tanggal[5]);
    
     mhs.setNamaKegiatan(rs.getString("namaKegiatan"));
     mhs.setTanggalKegiatan(tgl.toString());
     mhs.setTempatKegiatan(rs.getString("tempatKegiatan"));

     mhs.setSubKategori(rs.getString("subkategori"));
     
     
     mhsList.add(mhs);
     } 
     } catch(SQLException ex){
             throw ex;
             }finally{
                     if(conn!=null){
                     conn.close();
                     }
             }
        return mhsList;
  }
  
  public void removeArray(ArrayList<String> a){
      
      int n = a.size();
      for(int i =0;i<n;i++){
          a.remove(0);
      }
  }
  
}
