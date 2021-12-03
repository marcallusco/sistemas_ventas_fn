package com.emergentes.modelo;

public class Cliente {
    private int id;
    private String ci;
    private String nombre;
    private String apellido;
    private String correo;
    private String direccion;

    public String getCi() {
        return ci;
    }

    public void setCi(String ci) {
        this.ci = ci;
    }



    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    private String celular;

    public Cliente() {
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    @Override
    public String toString() {
        return "Cliente{" + "id=" + id + ", ci=" + ci + ", nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo + ", direccion=" + direccion + ", celular=" + celular + '}';
    }
    
}
