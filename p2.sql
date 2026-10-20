
USE LibraryManagement;

INSERT INTO authors (author_name)
VALUES ('Рут Веа'), ('Сідні Шелдон');

INSERT INTO genres (genre_name)
VALUES ('Детектив'), ('Психологічний триллел');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES
    ('Смерть міссис Вестевей', 2012, 1, 1),
    ('Розкажи мені свої сни', 1998, 2, 2);

INSERT INTO users (username, email)
VALUES
    ('anna', 'anna@example.com'),
    ('oleh', 'oleh@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES
    (1, 1, '2026-10-01', '2026-10-15'),
    (2, 2, '2026-10-05', NULL);
