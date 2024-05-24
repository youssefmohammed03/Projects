package PACK1;

public class Book {
    private String title;
    private boolean is_available;
    private static int count=0;
    public Book() {
        count++;
    }

    public Book(String title) {
        this.title = title;
        count++;
    }

    public Book(String title, boolean is_available) {
        this.title = title;
        this.is_available = is_available;
        count++;
    }

    public String getTitle() {
        return title;
    }

    public boolean Is_available() {
        return is_available;
    }

    public void setIs_available(boolean is_available) {
        this.is_available = is_available;
    }

    @Override
    public String toString() {
        return "Book{" + "title=" + title  + '}';
    }

    

    public static int getCount() {
        return count;
    }
}
