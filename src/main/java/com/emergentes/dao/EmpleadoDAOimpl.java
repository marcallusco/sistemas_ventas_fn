
package com.emergentes.dao;

import com.emergentes.modelo.Empleado;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;


public class EmpleadoDAOimpl extends ConexionDB implements EmpleadoDAO{

    @Override
    public void insert(Empleado empleado) throws Exception {
        try {
            this.conectar();
            String sql = "insert into empleados(ci,nombres,apellidos,celular)value(?,?,?,?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, empleado.getCi());
            ps.setString(2, empleado.getNombres());
            ps.setString(3, empleado.getApellidos());
            ps.setString(4, empleado.getCelular());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Empleado empleado) throws Exception {
         try {
            this.conectar();
            String sql = "update empleados set ci = ?, nombres = ?, apellidos = ?, celular = ? where = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, empleado.getCi());
            ps.setString(2, empleado.getNombres());
            ps.setString(3, empleado.getApellidos());
            ps.setString(4, empleado.getCelular());
            ps.setInt(5, empleado.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void delete(int id) throws Exception {
        try {
            this.conectar();
            String sql = "delete from empleados where id = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Empleado getById(int id) throws Exception {
        Empleado em = new Empleado();
        try {
            this.conectar();
            String sql = "select * from empleados where id = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                em.setId(rs.getInt("id"));
                em.setCi(rs.getString("ci"));
                em.setNombres(rs.getString("nombres"));
                em.setApellidos(rs.getString("apellidos"));
                em.setCelular(rs.getString("celular"));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return em;
    }

    @Override
    public List<Empleado> getAll() throws Exception {
         List<Empleado> lista = null;
        try {
            this.conectar();
            String sql = "select * from empleados";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            lista = new ArrayList<Empleado>();
            
            while(rs.next()){
                Empleado em = new Empleado();
                em.setId(rs.getInt("id"));
                em.setCi(rs.getString("ci"));
                em.setNombres(rs.getString("nombres"));
                em.setApellidos(rs.getString("apellidos"));
                em.setCelular(rs.getString("celular"));
                lista.add(em);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }
    
}
