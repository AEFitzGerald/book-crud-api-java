package com.fitzgerald.bookmvc.repositories;

import org.springframework.data.repository.CrudRepository;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.fitzgerald.bookmvc.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {
	
	 //built in crudRepository don't need just practicing seeing the syntax
	// retrieve all the books from the database
    List<Book> findAll();
    
    //built in crudRepository don't need just practicing seeing the syntax
    // retrieve one book 
    Long findById(String search);
    
    //unique query
    // find books with descriptions containing the search string
    List<Book> findByDescriptionContaining(String search);
    
    //unique query
    // counts how many titles contain a certain string
    Long countByTitleContaining(String search);
    
    //unique query
    // delete a book that starts with a specific title
    Long deleteByTitleStartingWith(String search);
    
    //built in crudRepository don't need just practicing seeing the syntax
    // deletes a book by id 
    Long deleteById(String search);
    
    
}
