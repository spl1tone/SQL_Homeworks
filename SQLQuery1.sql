-- PhoneBook
CREATE TABLE PhoneBook_Table (
    contactID INT PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    PhoneNumber TEXT,
    Email TEXT,
    Address TEXT
);

-- SchoolSchedule
CREATE TABLE SchoolSchedule_Table (
    scheduleID INT PRIMARY KEY,
    ClassName TEXT,
    TeacherName TEXT,
    DayOfWeek TEXT,
    startTime TIME,
    endTime TIME
);

-- UserLoginHistory
CREATE TABLE UserLoginHistory_Table (
    loginId INT PRIMARY KEY,
    userId INT,
    loginTime DATETIME,
    logoutTime DATETIME,
    IpAddress TEXT,
	UserLocation TEXT
);

-- BankAccounts
CREATE TABLE BankAccounts_Table (
    accountId INT PRIMARY KEY,
    AccountNumber TEXT,
    userId INT,
    userBalance DECIMAL,
    investingDate DATE
);

-- BankTransactionsData
CREATE TABLE BankTransactionsData_Table (
    transactionId INT PRIMARY KEY,
    accountId INT,
    TransactionType TEXT,
    TransactionAmount DECIMAL,
    transactionDate DATETIME
);
