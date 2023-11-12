package cz.czechitas.java2webapps.ukol5.controller;

public enum Pohlavi {
    DIVKA ("dívka"),
    CHLAPEC ("chlapec");

    private final String name;

    private Pohlavi(String name) {
        this.name = name;
    }

    @Override public String toString() {
        return name;
    }
}
