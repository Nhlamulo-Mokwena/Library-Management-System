/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Nhlamulo_M
 */
@Entity
@Table(name = "LANDED")
public class Landed implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "student_no", nullable = false)
    private Long id;
    
    private String name;
    private String  surname;
    
    private Long book_one_isbn;
    private Long book_two_isbn;

    public Landed() {
    }

    public Landed(Long id, String name, String surname, Long book_one_isbn, Long book_two_isbn) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.book_one_isbn = book_one_isbn;
        this.book_two_isbn = book_two_isbn;
    }

    public Long getBook_one_isbn() {
        return book_one_isbn;
    }

    public void setBook_one_isbn(Long book_one_isbn) {
        this.book_one_isbn = book_one_isbn;
    }

    public Long getBook_two_isbn() {
        return book_two_isbn;
    }

    public void setBook_two_isbn(Long book_two_isbn) {
        this.book_two_isbn = book_two_isbn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Landed)) {
            return false;
        }
        Landed other = (Landed) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Student[ id=" + id + " ]";
    }
    
}
