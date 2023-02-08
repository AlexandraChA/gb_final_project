package alex;

import java.time.LocalDate;
import java.util.Collection;

abstract class Pet {
    private int Id;
    private String name;
    private static int counter = 0;
    private LocalDate birthDate;
    private Collection<String> commands;
    private String type;

    public int getId() {
        return Id;
    }

    public String getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public Collection<String> getCommands() {
        return commands;
    }

    public void setCommands(Collection<String> commands) {
        this.commands = commands;
    }

    {
        Id = ++counter;
    }

    public Pet(String name, LocalDate birthDate, Collection<String> commands) {
        this.Id = Id;
        this.name = name;
        this.birthDate = birthDate;
        this.commands = commands;
        this.type = "Pet";
    }

    @Override
    public String toString() {
        return "Pet{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", birthDate=" + birthDate +
                ", commands=" + commands +
                ", type='" + type + '\'' +
                '}';
    }
}
