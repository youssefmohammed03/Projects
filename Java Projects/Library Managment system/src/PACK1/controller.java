/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package PACK1;

/**
 *
 * @author Saleh Ahmed
 */
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ResourceBundle;
import java.util.stream.Collectors;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ListView;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;

public class controller {

 private Stage stage;
 private Scene scene;
 private Parent root;
 Library library1 = new Library();
 
 public void switchToScene1(ActionEvent event) throws IOException {
  root = FXMLLoader.load(getClass().getResource("ff.fxml"));
  stage = (Stage)((Node)event.getSource()).getScene().getWindow();
  scene = new Scene(root);
  stage.setScene(scene);
  stage.show();
   
 }
 
 public void switchToScene2(ActionEvent event) throws IOException {
  root = FXMLLoader.load(getClass().getResource("ff2.fxml"));
  stage = (Stage)((Node)event.getSource()).getScene().getWindow();
  scene = new Scene(root);
  stage.setScene(scene);
  stage.show();
 }
 public void switchToScene3(ActionEvent event) throws IOException {
  root = FXMLLoader.load(getClass().getResource("ff3.fxml"));
  stage = (Stage)((Node)event.getSource()).getScene().getWindow();
  scene = new Scene(root);
  stage.setScene(scene);
  stage.show();
 }
 public void switchToLogin(ActionEvent event) throws IOException {
  root = FXMLLoader.load(getClass().getResource("loginForm.fxml"));
  stage = (Stage)((Node)event.getSource()).getScene().getWindow();
  scene = new Scene(root);
  stage.setScene(scene);
  stage.show();
 }
 public void switchBlocking(ActionEvent event) throws IOException {
  root = FXMLLoader.load(getClass().getResource("Blocking.fxml"));
  stage = (Stage)((Node)event.getSource()).getScene().getWindow();
  scene = new Scene(root);
  stage.setScene(scene);
  stage.show();
 } 
 public void switchToReader(ActionEvent event) throws IOException {
  root = FXMLLoader.load(getClass().getResource("READER.fxml"));
  stage = (Stage)((Node)event.getSource()).getScene().getWindow();
  scene = new Scene(root);
  stage.setScene(scene);
  stage.show();
   
 }    
 public void switchToBooksUser(ActionEvent event) throws IOException {
        root = FXMLLoader.load(getClass().getResource("ReaderBook.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
        

    }
 public void switchToUserReaders(ActionEvent event) throws IOException {
        root = FXMLLoader.load(getClass().getResource("ReaderUsers.fxml"));
        stage = (Stage)((Node)event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
        

    }
 
                
    @FXML
    private ListView<String> listOfNames;

    @FXML
    private TextField name;
    
    @FXML
    private TextField name1;
    
    @FXML
    private TextField nametorent;
    
    @FXML
    private TextField searchBar;
        
    @FXML
    private TextField searchbar2;
    
    @FXML
    private TextField searchbar3;
        
    @FXML
    private TextField searchbar4;
    
    @FXML
    private TextField id;

    @FXML
    private PasswordField password;
    
    @FXML
    private TextField cellphone_user;

    @FXML
    private TextField firstname_user;

    @FXML
    private TextField id_user;

    @FXML
    private TextField id_user_remove;

    @FXML
    private TextField lastname_user;

    @FXML
    private TextField password_user;


    @FXML
    void add_user(MouseEvent event) {
        String id = id_user.getText();
        String password = password_user.getText();
        String firstname = firstname_user.getText();
        String lastname = lastname_user.getText();
        String cellphone = cellphone_user.getText();
        
        Reader reader = new Reader(id,  password,  firstname,  lastname,  "0",  cellphone,  "0",  false,  "reader");
        
        library1.add_reader(library1.readers,reader );

    }

    @FXML
    void block_user(MouseEvent event) {
        String title1 = id_user_remove.getText();
        library1.block_reader(library1.readers, title1);
        
    }

    @FXML
    void remove_user(MouseEvent event) {
    String title1 = id_user_remove.getText();
    library1.remove_reader(library1.readers, title1);
    }


    @FXML
    void checkReaderOrLibrarian(ActionEvent event) {
    String id1 = id.getText();
        String password1 = password.getText();
        
        Boolean val = false;
        Boolean val2 = false;
        
        int validation1 = library1.validation_id(library1.librarians, library1.readers, id1);
        if(validation1 == 1){
            val = library1.validation_pass_librarian(library1.librarians, id1,  password1);
        }
        else if(validation1 == 2){
            val2 = library1.validation_pass_reader(library1.readers, id1,  password1);
        }
        else{
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error");
            alert.setHeaderText("Invalid ID");
            alert.setContentText("Please enter a valid ID");
            alert.showAndWait();
        }
        
        if (val) {
            
            try {
                switchToScene2(event);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        
        if (val2) {
            try {
                switchToReader(event);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        
        if(val == false && val2 == false && (validation1 == 1 || validation1 == 2)){
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error");
            alert.setHeaderText("Invalid password");
            alert.setContentText("Please enter a correct password ");
            alert.showAndWait();
            
        }
}

   

    @FXML
    void removeName(MouseEvent event) {
     String title1 = name1.getText();
    library1.remove_book(library1.books, title1);}
     
    @FXML
    void search_book2(ActionEvent event) {
    String title = searchbar4.getText();
    boolean bookFound = false;
    for (Book book : library1.books) {
        if (book.getTitle().equals(title)) {
            bookFound = true;
            listOfNames.getItems().clear();
            listOfNames.getItems().add(book.getTitle());
            break;
        }
    }
    if (!bookFound) {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle("Error");
        alert.setHeaderText("Book not found");
        alert.setContentText("The book you searched for was not found in the library.");
        alert.showAndWait();
    }

}
        
    @FXML
    void search(ActionEvent event) {
    String title = searchBar.getText();
    boolean bookFound = false;
    for (Book book : library1.books) {
        if (book.getTitle().equals(title)) {
            bookFound = true;
            listOfNames.getItems().clear();
            listOfNames.getItems().add(book.getTitle());
            break;
        }
    }
    if (!bookFound) {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle("Error");
        alert.setHeaderText("Book not found");
        alert.setContentText("The book you searched for was not found in the library.");
        alert.showAndWait();
    }

}
   

    
    

    
    @FXML
    void addName(MouseEvent event) {
    String title = name.getText();
    Book book = new Book(title, true);
    library1.add_book(library1.books, book); 
}
     
    @FXML   
    void search_user(ActionEvent event) {
        String id3 = searchbar2.getText();
        boolean userFound = false;
        for (Reader reader : library1.readers) {
            if (reader.getId().equals(id3)) {
                userFound = true;
                listOfNames.getItems().clear();
                listOfNames.getItems().add(reader.getId());
                break;
            }
        }
        if (!userFound) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error");
            alert.setHeaderText("User not found");
            alert.setContentText("The user you searched for was not found in the library.");
            alert.showAndWait();
        }
    }
    
        @FXML   
    void search_user2(ActionEvent event) {
        String id3 = searchbar3.getText();
        boolean userFound = false;
        for (Reader reader : library1.readers) {
            if (reader.getId().equals(id3)) {
                userFound = true;
                listOfNames.getItems().clear();
                listOfNames.getItems().add(reader.getId());
                break;
            }
        }
        if (!userFound) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Error");
            alert.setHeaderText("User not found");
            alert.setContentText("The user you searched for was not found in the library.");
            alert.showAndWait();
        }
    }


@FXML   
void rent_book2(ActionEvent event) {
    String title3 = nametorent.getText();
    library1.search_and_add_to_orderlist(title3, library1.books, library1.orderlist2);
    
    ObservableList<String> items = FXCollections.observableArrayList();
    for (Book book : library1.orderlist2) {
        items.add(book.getTitle());
    }
    
    ListView<String> orderListView = new ListView<String>();
    orderListView.setItems(items);
    
    Scene orderScene = new Scene(orderListView, 300, 300);
    
    Stage orderStage = new Stage();
    orderStage.setTitle("Order List");
    orderStage.setScene(orderScene);
    orderStage.show();
}
    
    
    

}

