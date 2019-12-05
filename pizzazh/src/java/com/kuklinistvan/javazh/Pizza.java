/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kuklinistvan.javazh;

import java.util.LinkedList;
import java.util.Set;

/**
 *
 * @author kuklinistvan
 */
public class Pizza {
    enum Meret { cm25, cm32 };
    
    private Meret meret;
    
    private static final int ALAPAR_25 = 500;
    private static final int ALAPAR_32 = 800;

    public Pizza(Meret meret) {
        this.meret = meret;
    }
    
    public int getMeret() {
        switch(meret) {
            case cm25:
                return 25;
            case cm32:
                return 32;
        }
        
        throw new RuntimeException("Lefedetelen méret.");
    }
    
    public static Pizza FromIntMeret(int meret) throws NincsIlyenMeretException {
        switch(meret) {
            case 25:
                return new Pizza(Meret.cm25);
            case 32:
                return new Pizza(Meret.cm32);
        }
        
        throw new NincsIlyenMeretException(meret);
    }
    
    private LinkedList<Feltet> feltetek = new LinkedList<>();
    
    public void addFeltet(Feltet feltet) {
        if(!feltetek.contains(feltet)) {
            this.feltetek.add(feltet);
        }
    }
    
    public void delFeltet(Feltet feltet) {
        this.feltetek.remove(feltet);
    }
    
    public void delFeltet(int n) {
        this.feltetek.remove(feltetek.get(n));
    }
    
    public Feltet[] getAktualisFeltetek() {
        Feltet[] feltetek = new Feltet[this.feltetek.size()];
        
        int i = 0;
        for (Feltet feltet : this.feltetek) {
            feltetek[i] = feltet;
            i++;
        }
        
        return feltetek;
    }
    
    public int calculateAr() {
        return getAlaparBy(this.meret) + calculateArOf(feltetek);
    } 
    
    private static int getAlaparBy(Meret meret) {
        switch(meret) {
            case cm25:
                return ALAPAR_25;
            case cm32: 
                return ALAPAR_32;
        }
        
        throw new RuntimeException("Nem lefedett méret");
    }
    
    private static int calculateArOf(LinkedList<Feltet> feltetek) {
        int ar = 0;
        
        for (Feltet feltet : feltetek) {
            ar += feltet.getAr();
        }
        
        return ar;
    }
}
