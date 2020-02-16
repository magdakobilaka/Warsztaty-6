package pl.coderslab.phonebook;

import com.sun.istack.internal.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "records")
public class Record {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Size(min = 1, max =30, message = "Minimum 2 znaków, maximum 30 znaków")
    @Column(nullable = false)
    private String surname;
    @NotNull
    private String name;
    private String city;
    private String street;
    private String flatnumber;
    @NotNull
    @Column(unique = true)
    private String phonenumber;

}
