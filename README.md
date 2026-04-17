# Credit Transaction Analysis Project 
## Data Processing and Cleaning with SQL

### Datasets: 
user_data:

    | id (Primary Key) | Unique identifier for each user |
    | current_age | Current age of the user |
    | retirement_age: Declared retirement age of the user |
- birth_year: Year of birth for the user.
- birth_month: Month of birth for the user.
- gender: Gender of the user ( male or female).
- address: Residential address of the user.
- latitude: Latitude of the user’s residence.
- longitude: Longitude of the user’s residence.
- per_capita_income: Per capita income of the user.
- yearly_income: Total yearly income of the user.
- total_debt: Total amount of debt owed by the user.
- credit_score: Credit score rating of the user.
- num_credit_cards: Number of credit cards owned by the user.

transaction_data:
- id (Primary Key): Unique identifier for each transaction.
- date: Date of the transaction.
- client_id (Foreign Key to users_data.id): Identifier linking the transaction to the user in the users_data table.
- card_id (Foreign Key to cards_data.id): Identifier linking the transaction to the respective card in the cards_data table.
- amount: Transaction amount in the respective currency.
- use_chip: Boolean/Flag indicating if the chip was used during the transaction.
- merchant_id: Unique identifier of the merchant.
- merchant_city: City where the merchant is located.
- merchant_state: State where the merchant is located.
- zip: ZIP code of the merchant's location.
- mcc (Foreign Key to mcc_codes.mcc_id): Merchant Category Code representing the type of merchant or transaction.
- errors: Any errors encountered during the transaction (if any).

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


