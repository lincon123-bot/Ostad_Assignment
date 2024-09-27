class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }
  void read(int pages) {
    pagesRead += pages;
  }
  int getPagesRead() {
    return pagesRead;
  }
  String getTitle() {
    return title;
  }
  String getAuthor() {
    return author;
  }
  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book("Dart Version 1", "Lincon Roy", 2011, 250);
  Book book2 = Book("Dart Version 2", "Lincon Roy", 2012, 230);
  Book book3 = Book("Dart Version 3", "Lincon Roy", 2013, 220);

  book1.read(30);
  book2.read(40);
  book3.read(20);

  List<Book> books = [book1, book2, book3];

  for (Book book in books) {
    print("Title: ${book.getTitle()}");
    print("Author: ${book.getAuthor()}");
    print("Publication Year: ${book.getPublicationYear()}");
    print("Pages Read: ${book.getPagesRead()}");
    print("Book Age: ${book.getBookAge()} years");
    print("");
  }

  print("Total number of books: ${Book.totalBooks}");
}