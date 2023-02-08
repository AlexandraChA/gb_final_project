package alex;

import java.time.LocalDate;
import java.util.Collection;

public class Donkey extends PackAnimal {
    public Donkey(String name, LocalDate birthDate, Collection<String> commands) {
        super(name, birthDate, commands);
    }

}
