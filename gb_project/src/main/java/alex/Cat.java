package alex;

import java.time.LocalDate;
import java.util.Collection;

public class Cat extends Pet {

    public Cat(String name, LocalDate birthDate, Collection<String> commands) {
        super(name, birthDate, commands);
    }


}
