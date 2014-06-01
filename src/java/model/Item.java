/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Admin
 */
public class Item {
    private int id;
    private boolean avaliable;
    private String detail;
    private Borrowing borrow;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isAvaliable() {
        return avaliable;
    }

    public void setAvaliable(boolean avaliable) {
        this.avaliable = avaliable;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Borrowing getBorrow() {
        return borrow;
    }

    public void setBorrow(Borrowing borrow) {
        this.borrow = borrow;
    }
}
