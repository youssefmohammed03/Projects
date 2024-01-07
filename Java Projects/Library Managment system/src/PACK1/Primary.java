package PACK1;


import java.util.Scanner;

public class Primary {
    
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        Library library = new Library();
        int choice;
        Boolean val = false;
        Boolean val2 = false;
        System.out.println("Welcome to the Library");
        System.out.println("Please enter your ID");
        String id = input.nextLine();
        System.out.println("Please enter your password");
        String password = input.nextLine();
        int validation1 = library.validation_id(library.librarians, library.readers, id);
        if(validation1 == 1){
            val = library.validation_pass_librarian(library.librarians, id,  password);
        }
        else if(validation1 == 2){
            val2 = library.validation_pass_reader(library.readers, id,  password);
        }
        else{
            System.out.println("The id you entered does not belong to any user");
        }

        if (val) {
            System.out.println("Welcome Librarian");
            do{
                    System.out.println("Please enter your choice");
                    System.out.println("1- Add Book");
                    System.out.println("2- Remove Book");
                    System.out.println("3- Add Reader");
                    System.out.println("4- Remove Reader");
                    System.out.println("5- Search Book");
                    System.out.println("6- Display Books");
                    System.out.println("7- Search Reader");
                    System.out.println("8- Block Reader");
                    System.out.println("9- Add Librarian");
                    System.out.println("10- Remove Librarian");
                    System.out.println("11- Search Librarian");
                    System.out.println("12- Block Librarian");
                    System.out.println("13- Exit");
                    choice = input.nextInt();
                    switch (choice) {
                        case 1:
                            System.out.println("Please enter the book title");
                            String title = input.next();
                            Book book = new Book(title, true);
                            library.add_book(library.books, book);
                            System.out.println(book);
                            break;
                        case 2:
                            System.out.println("Please enter the book title");
                            String title1 = input.next();
                            library.remove_book(library.books, title1);
                            break;
                        case 3:
                            System.out.println("Please enter the reader ID");
                            String id1 = input.next();
                            System.out.println("Please enter the reader password");
                            String password1 = input.next();
                            System.out.println("Please enter the reader first name");
                            String firstName = input.next();
                            System.out.println("Please enter the reader last name");
                            String lastName = input.next();
                            System.out.println("Please enter the reader address");
                            String address = input.next();
                            System.out.println("Please enter the reader cell phone");
                            String cellPhone = input.next();
                            System.out.println("Please enter the reader email");
                            String email = input.next();
                            System.out.println("Please enter the reader type");
                            String type = input.next();
                            Reader reader = new Reader(id1, password1, firstName, lastName, address, cellPhone, email, false, type);
                            library.add_reader(library.readers, reader);
                            break;
                        case 4:
                            System.out.println("Please enter the reader ID");
                            String id2 = input.next();
                            library.remove_reader(library.readers, id2);
                            break;
                        case 5:
                            System.out.println("Please enter the book title");
                            String title2 = input.next();
                            library.book_search(title2, library.books);
                            break;
                        case 6:
                            library.display_books(library.books);
                            break;
                        case 7:
                            System.out.println("Please enter the reader ID");
                            String id3 = input.next();
                            library.reader_search(id3, library.readers);
                            break;
                        case 8:
                            System.out.println("Please enter the reader ID you want to block");
                            String id4 = input.next();
                            library.block_reader(library.readers, id4);
                            break;
                        case 9:
                            System.out.println("Please enter the Librarian ID");
                            String id5 = input.next();
                            System.out.println("Please enter the Librarian password");
                            String password5 = input.next();
                            System.out.println("Please enter the Librarian first name");
                            String firstName1 = input.next();
                            System.out.println("Please enter the Librarian last name");
                            String lastName1 = input.next();
                            System.out.println("Please enter the Librarian address");
                            String address1 = input.next();
                            System.out.println("Please enter the Librarian cell phone");
                            String cellPhone1 = input.next();
                            System.out.println("Please enter the Librarian email");
                            String email1 = input.next();
                            System.out.println("Please enter the Librarian type");
                            String type1 = input.next();
                            Librarian librarian = new Librarian(id5, password5, firstName1, lastName1, address1, cellPhone1, email1, false, type1);
                            library.add_librarian(library.librarians, librarian);
                            break;
                        case 10:
                            System.out.println("Please enter the librarian ID");
                            String id6 = input.next();
                            library.remove_librarian(library.librarians, id6);
                            break;
                        case 11:
                            System.out.println("Please enter the librarian ID");
                            String id7 = input.next();
                            library.librarian_search(id7, library.librarians);
                            break;
                        case 12:
                            System.out.println("Please enter the librarian ID you want to block");
                            String id8 = input.next();
                            library.block_librarian(library.librarians, id8);
                            break;
                        case 13:
                            System.out.println("Thank you for using the Library");
                            break;
                        default:
                            System.out.println("Invalid choice");
                            break;


                    }
            }
            while(choice!=13);
}

//for reader
if(val2){
    System.out.println("Welcome Reader");
    do{
        System.out.println("Please enter your choice");
        System.out.println("1- Search Book");
        System.out.println("2- Rent Book");
        System.out.println("3- Exit");
        choice = input.nextInt();
        switch (choice) {
            
            case 1:
                System.out.println("Please enter the book title");
                String title = input.next();
                library.book_search(title, library.books);
                break;
            case 2: 
                library.display_books(library.books); 
                System.out.println("Enter the book title you want to rent");
                String title1= input.next();
                library.rent_book(title1, library.books , id, library.readers);
            case 3:
                System.out.println("Thank you for using the Library");
                break;
            default:
                System.out.println("Invalid choice");
                break;
        }
    }
    while(choice!=3);
}

if(val == false && val2 == false && (validation1 == 1 || validation1 == 2)){
    System.out.println("The password you enterd is wrong");
}
input.close();
}
}
