# Create a user Table 

CREATE TABLE USER_TABLE
(
ID INT PRIMARY KEY,
REGISTRATION_DATE TIMESTAMP,
NAME VARCHAR(50) NOT NULL,
PHONE_NUMBER CHAR(11) UNIQUE NOT NULL,
OPERATING_SYSTEM VARCHAR(10),
OTP_VARIFIED BOOLEAN NOT NULL,
CITY VARCHAR(20)

);

# Rename The Table

ALTER TABLE USER_TABLE
RENAME TO USER_TAB;

# Adding a New Column

ALTER TABLE USER_TAB
ADD COLUMN GENDER CHAR(1);

# Delecting Column 
ALTER TABLE USER_TAB
DROP COLUMN GENDER;







