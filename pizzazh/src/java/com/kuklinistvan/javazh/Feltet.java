/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kuklinistvan.javazh;

/**
 *
 * @author kuklinistvan
 */
public class Feltet {
    private String nev;
    private int ar;

    public Feltet(String nev, int ar) {
        this.nev = nev;
        this.ar = ar;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public int getAr() {
        return ar;
    }

    public void setAr(int ar) {
        this.ar = ar;
    }
    
    public static final Feltet[] VALASZTHATO_FELTETEK = {
        new Feltet("Kolbász", 100),
        new Feltet("Sonka", 80),
        new Feltet("Sajt", 80),
        new Feltet("Uborka", 40)
    };
}