package pl.coderslab.phonebook;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.awt.print.Book;
import java.util.List;
import java.util.Set;

public interface RecordRepository extends JpaRepository<Record, Long> {
    List<Record> findBySurname(String surname);

//    List<Record> findByCityAndStreetAndFlatnumber(String city,String street,String flatnumber);


}
