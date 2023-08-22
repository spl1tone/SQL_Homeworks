CREATE TABLE Authors (
    authorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

CREATE TABLE Customers (
    customerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100)
);

CREATE TABLE Books (
    bookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    authorID INT,
    publicationYear INT NOT NULL,
    FOREIGN KEY (authorID) REFERENCES Authors(authorID)
);


CREATE TABLE BookLoans (
    loanID INT PRIMARY KEY,
    customerID INT,
    bookID INT,
    loanDate DATE NOT NULL,
    returnLoanDate DATE,
    FOREIGN KEY (customerID) REFERENCES Customers(customerID),
    FOREIGN KEY (bookID) REFERENCES Books(bookID)
);

CREATE TABLE BookCounts (
    bookID INT PRIMARY KEY,
    totalCount INT NOT NULL,
    availableCount INT NOT NULL,
    FOREIGN KEY (bookID) REFERENCES Books(bookID)
);
