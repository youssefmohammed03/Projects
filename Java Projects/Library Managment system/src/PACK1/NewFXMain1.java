/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXMain.java to edit this template
 */
package PACK1;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.image.Image;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

/**
 *
 * @author Saleh Ahmed
 */
public class NewFXMain1 extends Application {
    @Override
    public void start(Stage stage) throws Exception {
    
    Parent root = FXMLLoader.load(getClass().getResource("loginForm.fxml"));

        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
        stage.setTitle("Library Management System");
        stage.getIcons().add(new Image("PACK1\\images\\pngegg (3).png"));
        stage.setOnCloseRequest(event -> {
				event.consume();
				logout(stage);	
			});
			
        
    }
    
    public void logout(Stage stage){	
		
		Alert alert = new Alert(AlertType.CONFIRMATION);
		alert.setTitle("Logout");
		alert.setHeaderText("You're about to close program!");
		alert.setContentText("Do you want to save before exiting?");
		
		if (alert.showAndWait().get() == ButtonType.OK){
			System.out.println("You successfully logged out");
			stage.close();
		} 
	}


    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}




