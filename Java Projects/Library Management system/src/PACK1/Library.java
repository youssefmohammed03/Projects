package PACK1;

import java.util.ArrayList;
import java.util.Iterator;
public class Library {
    ArrayList<User> users = new ArrayList<User>();
    ArrayList<Book> books = new ArrayList<Book>();
    ArrayList<Reader> readers = new ArrayList<Reader>();
    ArrayList<Librarian> librarians = new ArrayList<Librarian>();
    ArrayList<Book> orderlist2 = new ArrayList<Book>();
    
    public Library() {
        
        Librarian librarian1 = new Librarian( "1", "1", "1", "1", "1", "1", "1", false, "librarian");
        Librarian librarian2 = new Librarian( "2", "2", "2", "2", "2", "2", "2", false, "librarian");
        Librarian librarian3 = new Librarian( "3", "3", "3", "3", "3", "3", "3", false, "librarian");

        Reader reader1 = new Reader( "4", "4", "4", "4", "4", "4", "4", false, "reader");
        Reader reader2 = new Reader( "5", "5", "5", "5", "5", "5", "5", false, "reader");
        Reader reader3 = new Reader( "6", "6", "6", "6", "6", "6", "6", false, "reader");

        Book book1 = new Book("book1", true);
        Book book2 = new Book("book2", true);
        Book book3 = new Book("book3", true);

        librarians.add(librarian1);
        librarians.add(librarian2);
        librarians.add(librarian3);

        readers.add(reader1);
        readers.add(reader2);
        readers.add(reader3);

        books.add(book1);
        books.add(book2);
        books.add(book3);
    }


    public void add_book(ArrayList<Book> books, Book book){
        books.add(book);
    }

    public void remove_book(ArrayList<Book> books, String title){
        Iterator<Book> iterator = books.iterator();
        while (iterator.hasNext()) {
            Book book = iterator.next();
            if (book.getTitle().equals(title)) {
                iterator.remove();
            }
        }
    }
    
    public void display_books(ArrayList<Book> books){
        for (Book book : books) {
            System.out.println(book.toString());
        }
    }

    public void book_search(String title, ArrayList<Book> books){
        Iterator<Book> iterator = books.iterator();
        while (iterator.hasNext()) {
            Book book = iterator.next();
            if (book.getTitle().equals(title)) {
                System.out.println(book.toString());
                break;
            }
            else{
                System.out.println("Book not found");
            }
        }
    }

    public void rent_book(String title, ArrayList<Book> books, String id1, ArrayList<Reader> readers) {
        Reader reader;
        int i = reader_search3(id1, readers);
        reader = readers.get(i);
    
        if (reader.isBlocked()) {
            System.out.println("You are blocked, and you cannot rent the book");
            return;
        }
    
        boolean bookFound = false;
        Iterator<Book> iterator = books.iterator();
        while (iterator.hasNext()) {
            Book book = iterator.next();
            if (book.getTitle().equals(title)) {
                bookFound = true;
                if (book.Is_available()) {
                    book.setIs_available(false);
                    System.out.println("Book rented");
                    reader.addToOrderList(book);
                    reader.displayOrderList();
                } else {
                    System.out.println("Book not available");
    
                }
                break;
            }
        }
        if (!bookFound) {
            System.out.println("Book not found");
        }
    }

    public void add_reader(ArrayList<Reader> readers, Reader reader){
        readers.add(reader);
    }

    public void remove_reader(ArrayList<Reader> readers, String id){
        Iterator<Reader> iterator = readers.iterator();
        while (iterator.hasNext()) {
            Reader reader = iterator.next();
            if (reader.getId().equals(id)) {
                iterator.remove();
            }
        }
    }

    public void reader_search(String id1, ArrayList<Reader> readers){
        int size = readers.size();
        for (int i = 0 ; i<size ; i++) {

            if(i>=size){
                System.out.println("Reader not found");
            }

            if (id1.equals(readers.get(i).getId())){
                System.out.println(readers.get(i).toString());
                break;
            }
            
        }
    }

    public void block_reader(ArrayList<Reader> readers, String id) {

        for (Reader reader : readers) {
            if (reader.getId().equals(id)) {
                reader.setBlocked(true);
                System.out.println("Reader with ID: " + id + " has been blocked.");
                return;
            }
        }

        System.out.println("Reader with ID " + id + " not found.");
    }

    public void add_librarian(ArrayList<Librarian> librarians, Librarian librarian){
        librarians.add(librarian);
    }

    public void remove_librarian(ArrayList<Librarian> librarians, String id){
        Iterator<Librarian> iterator = librarians.iterator();
        while (iterator.hasNext()) {
            Librarian librarian = iterator.next();
            if (librarian.getId().equals(id)) {
                iterator.remove();
            }
        }
    }

    public void librarian_search(String id1, ArrayList<Librarian> librarians){
        int size = librarians.size();
        for (int i = 0 ; i<size ; i++) {

            if(i>=size){
                System.out.println("Librarian not found");
            }

            if (id1.equals(librarians.get(i).getId())){
                System.out.println(librarians.get(i).toString());
                break;
            }
            
        }
    }

    public void block_librarian(ArrayList<Librarian> librarians, String id) {

        for (Librarian librarian : librarians) {
            if (librarian.getId().equals(id)) {
                librarian.setBlocked(true);
                System.out.println("Reader with ID: " + id + " has been blocked.");
                return;
            }
        }

        System.out.println("Reader with ID " + id + " not found.");
    }  

    public int validation_id(ArrayList<Librarian> librarians, ArrayList<Reader> readers, String id1){
        boolean librarian;
        boolean reader;
        librarian = librarian_search2(id1, librarians);
        reader = reader_search2(id1, readers);
        if (librarian == true){
            return 1;
        }
        else if(reader == true){
            return 2;
        }
        else{
            return 3;
        }
    }

    public boolean validation_pass_librarian(ArrayList<Librarian> librarians, String id1, String pass){

        String true_pass = librarians.get(librarian_search3(id1, librarians)).getPassword();

        if (true_pass.equals(pass)){
            return true; 
        }
        else{
            return false;
        }
    }

    public boolean validation_pass_reader(ArrayList<Reader> readers, String id1, String pass){

        String true_pass = readers.get(reader_search3(id1, readers)).getPassword();
        
        if (true_pass.equals(pass)){
            return true; 
        }
        else{
            return false;
        }
    }




//the next functions were made private to help in other functions in the same class

    private boolean reader_search2(String id1, ArrayList<Reader> readers){
        int size = readers.size();
        for (int i = 0 ; i<size ; i++) {
            if (id1.equals(readers.get(i).getId())){
                return true;
            }
        }
        return false;
    }

    private boolean librarian_search2(String id1, ArrayList<Librarian> librarians){
        int size = librarians.size();
        for (int i = 0 ; i<size ; i++) {
            if (id1.equals(librarians.get(i).getId())){
                return true;
            }
        }
        return false;
    }

    private int reader_search3(String id1, ArrayList<Reader> readers){
        int size = readers.size();
        for (int i = 0 ; i<size ; i++) {
            if (id1.equals(readers.get(i).getId())){
                return i;
            }
            
        }
        return 0;
    }

    private int librarian_search3(String id1, ArrayList<Librarian> librarians){
        int size = librarians.size();
        for (int i = 0 ; i<size ; i++) {
            if (id1.equals(librarians.get(i).getId())){
                return i;
            }
        }
        return 0;
    }
    
    
    public void search_and_add_to_orderlist(String title, ArrayList<Book> books, ArrayList<Book> orderlist2) {
    boolean bookFound = false;
    for (Book book : books) {
        if (book.getTitle().equals(title)) {
            bookFound = true;
            if (book.Is_available()) {
                book.setIs_available(false);
                System.out.println("Book added to order list");
                orderlist2.add(book);
            } else {
                System.out.println("Book not available");
            }
            break;
        }
    }
    if (!bookFound) {
        System.out.println("Book not found");
    }
}



        //User user1 = new User( "1", "1", "1", "1", "1", "1", "1", false, "librarian");
        //User user2 = new User( "2", "2", "2", "2", "2", "2", "2", false, "reader");
        //User user3 = new User( "3", "3", "3", "3", "3", "3", "3", false, "reader");

        //users.add(user1);
        //users.add(user2);
        //users.add(user3);


    /*public void add_user(ArrayList<User> users, User user){
        users.add(user);
    }

    public void remove_user(ArrayList<User> users, String id){
        Iterator<User> iterator = users.iterator();
        while (iterator.hasNext()) {
            User user = iterator.next();
            if (user.getId().equals(id)) {
                iterator.remove();
            }
        }
    }

    

    public void user_search(String id, ArrayList<User> users){
        for (User user : users) {
            if (user.getId().equals(id)) {
                System.out.println(user.toString());

            }
            else{
                System.out.println("User not found");
            }
        }
    }*/


}
