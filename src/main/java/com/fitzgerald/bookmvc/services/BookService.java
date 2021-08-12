package com.fitzgerald.bookmvc.services;
import com.fitzgerald.bookmvc.models.Book;
import com.fitzgerald.bookmvc.repositories.BookRepository;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BookService {
	
	//tell the service about the repository
	// add the book repository as a dependency
    private final BookRepository bookRepository;
    
    //constructor for the service
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    
    //tell the service how to access repository with methods
    
    // returns all the books
    public List<Book> allBooks() {
        return this.bookRepository.findAll();
    }
    
    // creates/saves a book
    public Book createBook(Book b) {
        return this.bookRepository.save(b);
    }
    
    // retrieves one book
    public Book findBook(Long id) {
    	return this.bookRepository.findById(id).orElse(null);
  
    }
    
    //delete book
    public void deleteBook(Long id) {
    		this.bookRepository.deleteById(id);
    }
    
    //update book by id
    public Book updateBook(Book b) {
    		return this.bookRepository.save(b);
    		
    }
    
    //another way to update book
    public Book updateBook2(Long id, String title, String description, String language, Integer numberOfPages) {
  
    		Book b = this.findBook(id);
    		System.out.println("***********");
    		System.out.println(b.getTitle());
    		System.out.println("***********");
    		
    		//update that object
    		System.out.println(title);
    		b.setTitle(title);
    		b.setDescription(description);
    		b.setLanguage(language);
    		b.setNumberOfPages(numberOfPages);
    		
    		return this.bookRepository.save(b);
    }
    
//optional conditional does the same thing as the method above
//    public Book findBook(Long id) {
//        Optional<Book> optionalBook = bookRepository.findById(id);
//        if(optionalBook.isPresent()) {
//            return optionalBook.get();
//        } else {
//            return null;
//        }
}

