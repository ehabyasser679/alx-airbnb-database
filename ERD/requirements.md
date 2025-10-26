erDiagram
    User ||--o{ Property : "hosts"
    User ||--o{ Booking : "makes"
    User ||--o{ Review : "writes"
    User ||--o{ Message : "sends"
    User ||--o{ Message : "receives"
    Property ||--o{ Booking : "has"
    Property ||--o{ Review : "receives"
    Booking ||--|| Payment : "has"

    User {
        UUID user_id PK "Indexed"
        VARCHAR first_name "NOT NULL"
        VARCHAR last_name "NOT NULL"
        VARCHAR email "UNIQUE, NOT NULL, Indexed"
        VARCHAR password_hash "NOT NULL"
        VARCHAR phone_number "NULL"
        ENUM role "guest/host/admin, NOT NULL"
        TIMESTAMP created_at "DEFAULT CURRENT_TIMESTAMP"
    }

    Property {
        UUID property_id PK "Indexed"
        UUID host_id FK "References User"
        VARCHAR name "NOT NULL"
        TEXT description "NOT NULL"
        VARCHAR location "NOT NULL"
        DECIMAL pricepernight "NOT NULL"
        TIMESTAMP created_at "DEFAULT CURRENT_TIMESTAMP"
        TIMESTAMP updated_at "ON UPDATE CURRENT_TIMESTAMP"
    }

    Booking {
        UUID booking_id PK "Indexed"
        UUID property_id FK "References Property, Indexed"
        UUID user_id FK "References User"
        DATE start_date "NOT NULL"
        DATE end_date "NOT NULL"
        DECIMAL total_price "NOT NULL"
        ENUM status "pending/confirmed/canceled, NOT NULL"
        TIMESTAMP created_at "DEFAULT CURRENT_TIMESTAMP"
    }

    Payment {
        UUID payment_id PK "Indexed"
        UUID booking_id FK "References Booking, Indexed"
        DECIMAL amount "NOT NULL"
        TIMESTAMP payment_date "DEFAULT CURRENT_TIMESTAMP"
        ENUM payment_method "credit_card/paypal/stripe, NOT NULL"
    }

    Review {
        UUID review_id PK "Indexed"
        UUID property_id FK "References Property"
        UUID user_id FK "References User"
        INTEGER rating "CHECK 1-5, NOT NULL"
        TEXT comment "NOT NULL"
        TIMESTAMP created_at "DEFAULT CURRENT_TIMESTAMP"
    }

    Message {
        UUID message_id PK "Indexed"
        UUID sender_id FK "References User"
        UUID recipient_id FK "References User"
        TEXT message_body "NOT NULL"
        TIMESTAMP sent_at "DEFAULT CURRENT_TIMESTAMP"
    }

