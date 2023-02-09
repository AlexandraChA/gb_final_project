package alex;

public class Main {
    public static void main(String[] args) {
        AnimalRepository animalRepository = new AnimalRepository();
        String commands = animalRepository.getAnimalCommands("cat", 1);
        System.out.println(commands);

        String animalType = animalRepository.showAnimalClass("horse", 3);
        System.out.println(animalType);

        boolean adding = animalRepository.addAnimalCommand("cat", 1, "near");
        System.out.println(adding);

        commands = animalRepository.getAnimalCommands("cat", 1);
        System.out.println(commands);
    }
}