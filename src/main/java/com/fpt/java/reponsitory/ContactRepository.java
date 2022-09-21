package com.fpt.java.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpt.java.model.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer> {
}
