package ug.products.projectppo;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class HelloApplication extends Application {
    private static Stage primaryStage;

    @Override
    public void start(Stage stage) throws Exception {
        primaryStage = stage;

        // Cargar la pantalla de inicio de sesión
        showLoginScreen();

        stage.setTitle("Productos");
        stage.show();
    }

    public static void showLoginScreen() throws Exception {
        FXMLLoader loader = new FXMLLoader(HelloApplication.class.getResource("/ug/products/projectppo/Views/Login.fxml"));
        Parent root = loader.load();
        primaryStage.setScene(new Scene(root));
    }

    public static void showMainScreen() throws Exception {
        FXMLLoader loader = new FXMLLoader(HelloApplication.class.getResource("/ug/products/projectppo/Views/Main.fxml"));
        Parent root = loader.load();
        primaryStage.setScene(new Scene(root));
    }

    public static void main(String[] args) {
        launch();
    }
}