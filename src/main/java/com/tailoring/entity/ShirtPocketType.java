package com.tailoring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "shirt_pocket_type")
public class ShirtPocketType {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "shirt_pocket_type")
    private String shirtPocketType;

    public ShirtPocketType() {
        super();
    }

    public ShirtPocketType(int id, String shirtPocketType) {
        super();
        this.id = id;
        this.shirtPocketType = shirtPocketType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getShirtPocketType() {
        return shirtPocketType;
    }

    public void setShirtPocketType(String shirtPocketType) {
        this.shirtPocketType = shirtPocketType;
    }
}
