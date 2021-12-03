
package com.emergentes.modelo;

public class Empleado {
    private int id;
    private String ci;
    private String nombres;
    private String apellidos;
    private String celular;

    public Empleado() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCi() {
        return ci;
    }

    public void setCi(String ci) {
        this.ci = ci;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    @Override
    public String toString() {
        return "Empleado{" + "id=" + id + ", ci=" + ci + ", nombres=" + nombres + ", apellidos=" + apellidos + ", celular=" + celular + '}';
    }
    
    
}
