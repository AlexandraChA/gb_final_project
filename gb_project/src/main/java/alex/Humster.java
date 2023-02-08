package alex;

import java.time.LocalDate;
import java.util.Collection;

public class Humster extends Pet {
    public Humster(String name, LocalDate birthDate, Collection<String> commands) {
        super(name, birthDate, commands);
    }

}
