package com.frakmoley.bootingweb.models;

public class Room {

    private long id;
    private String name;
    private String info;

    public Room(long id, String name, String info) {
        this.id = id;
        this.name = name;
        this.info = info;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getInfo() {
        return info;
    }
}
