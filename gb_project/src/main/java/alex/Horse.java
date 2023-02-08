package alex;

import java.time.LocalDate;
import java.util.Collection;

public class Horse extends PackAnimal {
    public Horse(String name, LocalDate birthDate, Collection<String> commands) {
        super(name, birthDate, commands);
    }

}
