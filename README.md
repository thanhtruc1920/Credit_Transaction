# Credit Transaction Analysis Project 
## Data Processing and Cleaning with SQL

### Datasets: 
user_data:

        | id | SMALLINT | Unique identifier for each user |
    
        |  current_age  | TINYINT | Current age of the user |
    
        | retirement_age | TINYINT | Declared retirement age of the user |
    
        | birth_year  | SMALLINT | Year of birth for the user.

        | birth_month | TINYINT | Month of birth for the user.
    
        |  gender  | NVARCHAR(50) | Gender of the user ( male or female).
    
        | address  | NVARCHAR(50) | Residential address of the user.

        | latitude | NVARCHAR(50) | Latitude of the user’s residence.

        | longitude | FLOAT | Longitude of the user’s residence.

        | per_capita_income | DECIMAL(20, 2) | Per capita income of the user.

        | yearly_income | DECIMAL(20, 2) | Total yearly income of the user.

        |  total_debt  | DECIMAL(20, 2) | Total amount of debt owed by the user.

        | credit_score | SMALLINT | Credit score rating of the user.

        | num_credit_cards | TINYINT | Number of credit cards owned by the user.

transaction_data:

        | id | INT | Primary Key | Unique identifier for each transaction |

        |  date  | DATETIME2(7) | Date of the transaction |
    
        | client_id | SMALLINT | Foreign Key | Identifier linking the transaction to the user in the users_data table |

        |  card_id  | SMALLINT | Foreign Key | Identifier linking the transaction to the respective card in the cards_data table |

        |  amount  | FLOAT | Transaction amount in the respective currency |

        | use_chip | NVARCHAR(50) | Boolean/Flag indicating if the chip was used during the transaction |

        |  merchant_id  | INT | Unique identifier of the merchant |

        | merchant_city | NVARCHAR(50) | City where the merchant is located |
    
        | merchant_state | NVARCHAR(50) | State where the merchant is located |

        | zip | INT | ZIP code of the merchant's location |

        | mcc | SMALLINT | Foreign Key | Merchant Category Code representing the type of merchant or transaction |

        | errors | NVARCHAR(50) | Any errors encountered during the transaction (if any) |

### Tools: 
- SQL

### In the [data_processing.sql](https://github.com/user-attachments/files/25808274/data_processing.sql) file:

🔹 Duplicate check  

🔹 Check for NULL values  

🔹 Number of Users by Age Group  

🔹 Number of Users by Credit Score Group  

🔹 Error Column:  
- Replaced blank values with "No Error".
- Split rows containing multiple errors into separate rows base on "id" column from the transaction_data table.


