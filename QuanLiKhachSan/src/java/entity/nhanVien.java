package entity;

public class nhanVien {
    private String maNV;
    private String hoTenNV;
    private String chucVu;
    private String maQL;
    private String sdt;
    private String emailNV;
    private double luong;
    
    public nhanVien(){
        
    }

    public nhanVien(String maNV, String hoTenNV, String chucVu, String maQL, String sdt, String emailNV, double luong) {
        this.maNV = maNV;
        this.hoTenNV = hoTenNV;
        this.chucVu = chucVu;
        this.maQL = maQL;
        this.sdt = sdt;
        this.emailNV = emailNV;
        this.luong = luong;
    }

    public String getMaNV() {
        return maNV;
    }

    public String getHoTenNV() {
        return hoTenNV;
    }

    public String getChucVu() {
        return chucVu;
    }

    public String getMaQL() {
        return maQL;
    }

    public String getSdt() {
        return sdt;
    }

    public String getEmailNV() {
        return emailNV;
    }

    public double getLuong() {
        return luong;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public void setHoTenNV(String hoTenNV) {
        this.hoTenNV = hoTenNV;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }

    public void setMaQL(String maQL) {
        this.maQL = maQL;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public void setEmailNV(String emailNV) {
        this.emailNV = emailNV;
    }

    public void setLuong(double luong) {
        this.luong = luong;
    }

    @Override
    public String toString() {
        return "nhanVien{" + "maNV=" + maNV + ", hoTenNV=" + hoTenNV + ", chucVu=" + chucVu + ", maQL=" + maQL + ", sdt=" + sdt + ", emailNV=" + emailNV + ", luong=" + luong + '}';
    }
    
}

