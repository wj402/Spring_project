package org.zerock.ex00.mappers;

import org.zerock.ex00.domain.BookVO;

import java.awt.print.Book;
import java.util.List;
import java.util.Optional;

public interface BookMapper {

    List<BookVO> findAll();
    Optional<BookVO> findById(Long id);
    void save(BookVO book);
    void updateBorrowStatus(Long id, boolean borrowed);
    void deleteById(Long id);



    // 책 정보를 업데이트하는 메서드
    void update(BookVO book);

    List<BookVO> findBorrowedBooksByUserId(String userId);
    void returnBook(int bookId);
}
