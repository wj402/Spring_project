package org.zerock.ex00.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.ex00.service.BookService;
import org.zerock.ex00.domain.BookVO;

import java.awt.print.Book;
import java.util.List;

@Controller
@Log4j2
@RequiredArgsConstructor
@ComponentScan
public class BookController {

    private final BookService bookService;

    // 전체 도서 조회
    @GetMapping("/books")
    public String getAllBooks(Model model) {
        List<BookVO> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        return "book/management";
    }

    // 도서 상세 정보 조회
    @GetMapping("/books/detail/{id}")
    public String getBooksDetail(@PathVariable("id") Long id, Model model) {
        // 특정 ID를 가진 책의 상세 정보 조회
        BookVO book = bookService.getBookById(id);
        // 책 정보를 모델에 추가
        model.addAttribute("book", book);

        List<BookVO> books = bookService.getAllBooks();
        model.addAttribute("books", books);

        // 상세 페이지를 반환
        return "book/detail";
    }


    // 도서 대여 처리
    @PostMapping("/books/borrow/{id}")
    public String borrowBook(@PathVariable Long id) {
        log.info("Borrow request received for book id: " + id);
        bookService.borrowBook(id);
        return "redirect:/books";
    }


    // 도서 반납 처리
    @PostMapping("/books/return/{id}")
    public String returnBook(@PathVariable Long id) {
        log.info("Return request received for book id: " + id);
        bookService.returnBook(id);
        return "redirect:/books/bookreturn";
    }

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/books/bookreturn")
    public String getBookReturnPage(@AuthenticationPrincipal UserDetails userDetails, Model model) {
        String username = userDetails.getUsername();


        List<BookVO> rentedBooks = bookService.getBorrowedBooksByUser(username);
        model.addAttribute("books", rentedBooks); // 모델에 대여한 책 목록 추가

        List<BookVO> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        return "book/bookreturn"; // 반납 페이지로 이동
    }

    // 책 반납 처리
    @PostMapping("/return/{id}")
    public ResponseEntity<String> returnBook(
            @PathVariable("id") int id,
            @AuthenticationPrincipal UserDetails userDetails,
            Model model) {

        try {
            // 책 반납 처리
            bookService.returnBook(id);

            // 반납 후 최신 데이터(대여한 책 목록)을 다시 조회합니다.
            String username = userDetails.getUsername();
            List<BookVO> updatedRentedBooks = bookService.getBorrowedBooksByUser(username);
            model.addAttribute("books", updatedRentedBooks);

            //필요에 따라 전체 책 목록도 다시 조회하여 최신 상태로 모델에 추가할 수 있습니다.
            List<BookVO> updatedAllBooks = bookService.getAllBooks();
            model.addAttribute("books", updatedAllBooks);

            return ResponseEntity.ok("Book returned successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to return the book.");
        }
    }


    // 책 대여
    @PreAuthorize("isAuthenticated()")
    @GetMapping("/books/bookborrow")
    public String getBookBorrowPage(@AuthenticationPrincipal UserDetails userDetails, Model model) {

        List<BookVO> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        return "book/bookborrow";
    }

    // 책 대여 처리
    @PostMapping("/borrow/{id}")
    public ResponseEntity<String> borrowBook(
            @PathVariable("id") Long id,
            @AuthenticationPrincipal UserDetails userDetails) {

        try {
            String username = userDetails.getUsername();
            bookService.borrowBook(id, username); // 대여 처리

            // 대여 후 데이터 갱신
            List<BookVO> updatedBooks = bookService.getAllBooks();
            return ResponseEntity.ok("Book borrowed successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to borrow the book.");
        }
    }

}
