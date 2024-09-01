package org.zerock.ex00.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.zerock.ex00.domain.BookVO;
import org.zerock.ex00.domain.MemberVO;
import org.zerock.ex00.mappers.BookMapper;
import org.zerock.ex00.mappers.MemberMapper;
import org.zerock.ex00.service.exception.ResourcesNotFoundException;

import java.awt.print.Book;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class BookService {

    @Autowired
    private BookMapper bookMapper;

    // 전체 도서 목록 조회
    public List<BookVO> getAllBooks() {
        return bookMapper.findAll();
    }

    // 도서 대출 처리
    public void borrowBook(Long id) {
        BookVO bookvo = bookMapper.findById(id)
            .orElseThrow(() -> new ResourcesNotFoundException("Book not found"));
        bookvo.setBorrowed(true);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        String uid = userDetails.getUsername();
        bookvo.setBorrowedByUserId(uid);
        bookMapper.save(bookvo);
    }

    // 도서 반납 처리
    public void returnBook(Long id) {
        BookVO bookvo = bookMapper.findById(id)
                .orElseThrow(() -> new ResourcesNotFoundException("Book not found"));
        bookvo.setBorrowed(false);
        bookvo.setBorrowedByUserId(null); // 대여자 정보 삭제
        bookMapper.save(bookvo);
    }

    // 특정 도서 정보 조회
    public BookVO getBookById(Long id) {
        return bookMapper.findById(id)
                .orElseThrow(() -> new ResourcesNotFoundException("Book not found"));
    }


    // 사용자가 대여한 책 목록 조회
    public List<BookVO> getBorrowedBooksByUser(String userId) {
        return bookMapper.findBorrowedBooksByUserId(userId);
    }

    public void returnBook(int bookId) {
        bookMapper.returnBook(bookId);
    }

    public void borrowBook(Long id, String username) {
        // 1. 도서 조회
        BookVO bookvo = bookMapper.findById(id)
                .orElseThrow(() -> new ResourcesNotFoundException("Book not found"));

        // 2. 대여 가능 여부 확인
        if (bookvo.isBorrowed()) {
            throw new IllegalStateException("Book is already borrowed");
        }

        // 3. 도서 대여 상태 업데이트
        bookvo.setBorrowed(true);
        bookvo.setBorrowedByUserId(username);

        // 4. 도서 정보 저장
        bookMapper.save(bookvo);
    }

}
