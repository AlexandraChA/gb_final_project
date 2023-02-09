package alex;

import java.sql.*;
import java.util.Collection;

public class AnimalRepository {

    public String getAnimalCommands(String type, int id){
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        String animalCommands = null;
        try {
            connection = Database.getConnection();
            statement = connection.createStatement();
            String query = "SELECT * FROM " + type + "s where id = " + id;
            rs = statement.executeQuery(query);
            rs.next();
            int animal_type = rs.getInt("animal_type");
            Date birth_date = rs.getDate("birth_date");
            String commands = rs.getString("commands");
            String name = rs.getString("name");

            animalCommands = commands;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(connection!=null) {
                    connection.close();
                }
                if(statement!=null) {
                    statement.close();
                }
                if(rs!=null) {
                    rs.close();
                }
            }catch (SQLException e1){
                e1.printStackTrace();
            }
        } return animalCommands;
    }

    public String showAnimalClass(String type, int id) {
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        String animalType = null;
        try {
            connection = Database.getConnection();
            statement = connection.createStatement();
            String query = "SELECT a.name FROM " + type + "s as c join animals as a on c.animal_type=a.id where c.id = " + id;
            rs = statement.executeQuery(query);
            rs.next();
            String animal_type = rs.getString("name");
            animalType = animal_type;


        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(connection!=null) {
                    connection.close();
                }
                if(statement!=null) {
                    statement.close();
                }
                if(rs!=null) {
                    rs.close();
                }
            }catch (SQLException e1){
                e1.printStackTrace();
            }
        } return animalType;
    }

    public boolean addAnimalCommand(String type, int id, String command){
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        String animalCommands = null;
        try {
            connection = Database.getConnection();
            statement = connection.createStatement();
            String query = "SELECT * FROM " + type + "s where id = " + id;
            rs = statement.executeQuery(query);
            rs.next();
            String commands = rs.getString("commands");
            animalCommands = commands;
            String possibleCommands = "sit,run,voice,lie,near,come,stay";
            if (possibleCommands.contains(command)) {
                if (commands.contains(command)) {
                    return false;
                } else {
                    query = "update " + type + "s set commands = '" + commands + "," + command + "' where id = " + id;
                    System.out.println(query);
                    statement.executeUpdate(query);
                    return true;
                }
            } else {
                return false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(connection!=null) {
                    connection.close();
                }
                if(statement!=null) {
                    statement.close();
                }
                if(rs!=null) {
                    rs.close();
                }
            }catch (SQLException e1){
                e1.printStackTrace();
            }
        } return false;
    }
}
