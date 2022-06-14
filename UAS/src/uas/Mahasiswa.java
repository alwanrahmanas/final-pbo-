/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uas;

/**
 *
 * @author HP
 */
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class Mahasiswa implements Serializable{
    public String nim, nama,password,kelas,nimb,id;
    public data data;
     private String namaKegiatan, tempatKegiatan, tanggalKegiatan,kategori, dimensi, subKategori;
    //private ArrayList<String> hobi;
    
    public String getNim(){
        return nim;
    }
    public void setNim(String nim){
        this.nim = nim;
    }
    
    public String getId(){
        return id;
    }
    public void setId(String id){
        this.id = id;
    }
    
    public String getNamaKegiatan() {
        return namaKegiatan;
    }

    public void setNamaKegiatan(String namaKegiatan) {
        this.namaKegiatan = namaKegiatan;
    }

    public String getTempatKegiatan() {
        return tempatKegiatan;
    }

    public void setTempatKegiatan(String tempatKegiatan) {
        this.tempatKegiatan = tempatKegiatan;
    }

    public String getTanggalKegiatan() {
        return tanggalKegiatan;
    }

    public void setTanggalKegiatan(String tanggalKegiatan) {
        this.tanggalKegiatan = tanggalKegiatan;
    }

    public String getKategori() {
        return kategori;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }

    public String getDimensi() {
        return dimensi;
    }

    public void setDimensi(String dimensi) {
        this.dimensi = dimensi;
    }

    public String getSubKategori() {
        return subKategori;
    }

    public void setSubKategori(String subKategori) {
        this.subKategori = subKategori;
    }
    
    
    
    /* Return NIM */
   
    
    /* Return Nama */
    public String getNama() {
        return nama;
    }
    
     public String getPassword() {
        return password;
    }
     
     public String getKelas(){
         return kelas;
     }
     
     


    

  
   
    /* Set NIM */
  

    /* Set Nama */
    public void setNama(String nama) {
        this.nama = nama;
    }
    
    public void setPassword(String p) {
        this.password = p;
    }
    
    public void setKelas(String k){
        this.kelas = k;
    }
    
    
    

  
   

   

    
}
