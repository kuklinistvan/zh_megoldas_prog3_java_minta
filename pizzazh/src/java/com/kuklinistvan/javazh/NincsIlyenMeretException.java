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
public class NincsIlyenMeretException extends Exception {

    public int meret;
    
    public NincsIlyenMeretException(int meret) {
        this.meret = meret;
    }
    
}
