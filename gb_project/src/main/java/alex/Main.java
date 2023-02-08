package alex;

public class Main {
    public static void main(String[] args) {
        AnimalRepository animalRepository = new AnimalRepository();
        String name = animalRepository.getAnimalCommands("horse", 3);
        System.out.println(name);

        String animalType = animalRepository.showAnimalClass("horse", 3);
        System.out.println(animalType);
    }
}