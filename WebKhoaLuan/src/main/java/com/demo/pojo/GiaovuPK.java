/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author ADMIN
 */
@Embeddable
public class GiaovuPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "maGVU")
    private String maGVU;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "maND")
    private String maND;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "maCV")
    private String maCV;

    public GiaovuPK() {
    }

    public GiaovuPK(String maGVU, String maND, String maCV) {
        this.maGVU = maGVU;
        this.maND = maND;
        this.maCV = maCV;
    }

    public String getMaGVU() {
        return maGVU;
    }

    public void setMaGVU(String maGVU) {
        this.maGVU = maGVU;
    }

    public String getMaND() {
        return maND;
    }

    public void setMaND(String maND) {
        this.maND = maND;
    }

    public String getMaCV() {
        return maCV;
    }

    public void setMaCV(String maCV) {
        this.maCV = maCV;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maGVU != null ? maGVU.hashCode() : 0);
        hash += (maND != null ? maND.hashCode() : 0);
        hash += (maCV != null ? maCV.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GiaovuPK)) {
            return false;
        }
        GiaovuPK other = (GiaovuPK) object;
        if ((this.maGVU == null && other.maGVU != null) || (this.maGVU != null && !this.maGVU.equals(other.maGVU))) {
            return false;
        }
        if ((this.maND == null && other.maND != null) || (this.maND != null && !this.maND.equals(other.maND))) {
            return false;
        }
        if ((this.maCV == null && other.maCV != null) || (this.maCV != null && !this.maCV.equals(other.maCV))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.demo.pojo.GiaovuPK[ maGVU=" + maGVU + ", maND=" + maND + ", maCV=" + maCV + " ]";
    }
    
}
