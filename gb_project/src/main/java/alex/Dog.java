package alex;

import java.time.LocalDate;
import java.util.Collection;

public class Dog extends Pet {
    public Dog(String name, LocalDate birthDate, Collection<String> commands) {
        super(name, birthDate, commands);
    }

}
