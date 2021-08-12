package com.fitzgerald.bookmvc.controllers;
import com.fitzgerald.bookmvc.models.Book;
import com.fitzgerald.bookmvc.services.BookService;

import java.util.List;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;




@RestController
public class BooksApi {
	//private final BookService bookService states we are using a bookService and it will not be changing
	private final BookService bookService;
	public BooksApi(BookService bookService){
		
		this.bookService = bookService;
		}

	
	//controller requests
	
	@RequestMapping("/api")
	public String test() {
		System.out.println("test");
		return "test";
	}
	
	//get all books
	@RequestMapping("/api/books")
	public List<Book> getAllBooks() {
		System.out.println("here is api route 1");
		System.out.println( bookService.allBooks());
		return bookService.allBooks();
	    }
	
	//creates a book
	@PostMapping(value="/api/books/create")
	public Book create(@RequestParam(value="title") String title, @RequestParam(value="description") String desc, @RequestParam(value="language") String lang, @RequestParam(value="pages") Integer numOfPages) {
		
		//create a new book object using constructor in Book.java model
		Book book = new Book(title, desc, lang, numOfPages);
		
		return this.bookService.createBook(book);
	    }
	
	//get one book from an id
	@GetMapping("/api/books/{id}")
	public Book show(@PathVariable("id") Long id) {
		
		Book book = bookService.findBook(id);
		
		return book;
	    }
	
	
	@DeleteMapping("api/books/delete/{id}")
	public void deleteBook(@PathVariable("id") Long id) {
		
		this.bookService.deleteBook(id);
	}

}
