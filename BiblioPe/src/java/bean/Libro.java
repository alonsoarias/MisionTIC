package bean;

import java.io.Serializable;

public class Libro {

 String libro_titulo;
 String categoria_name;
 String autor_name;
 String editor_name;
 String edicion;
 String volumen;
 String isbn;
 String precio;
 String idioma;
 String descripcion;

    public String getLibro_titulo() {
        return libro_titulo;
    }

    public void setLibro_titulo(String libro_titulo) {
        this.libro_titulo = libro_titulo;
    }

    public String getCategoria_name() {
        return categoria_name;
    }

    public void setCategoria_name(String categoria_name) {
        this.categoria_name = categoria_name;
    }

    public String getAutor_name() {
        return autor_name;
    }

    public void setAutor_name(String autor_name) {
        this.autor_name = autor_name;
    }

    public String getEditor_name() {
        return editor_name;
    }

    public void setEditor_name(String editor_name) {
        this.editor_name = editor_name;
    }

    public String getEdicion() {
        return edicion;
    }

    public void setEdicion(String edicion) {
        this.edicion = edicion;
    }

    public String getVolumen() {
        return volumen;
    }

    public void setVolumen(String volumen) {
        this.volumen = volumen;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

}