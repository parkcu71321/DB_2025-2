CREATE TABLE Users (
    user_id     VARCHAR(20)  NOT NULL,   
    password    VARCHAR(20)  NOT NULL,   
    nickname    VARCHAR(20)  NOT NULL,  
    age         INT          NOT NULL,
    gender      CHAR(1)      NOT NULL,
    phone       VARCHAR(20)  NOT NULL,
    
    PRIMARY KEY (user_id),
    
    CONSTRAINT chk_gender CHECK (gender IN ('M', 'F'))
);

CREATE TABLE Admins (
    admin_id    VARCHAR(20)  NOT NULL,
    password    VARCHAR(20)  NOT NULL,
    name        VARCHAR(20)  NOT NULL,
    
    PRIMARY KEY (admin_id)
);

CREATE TABLE Categories (
    category_code    VARCHAR(20)  NOT NULL,  
    category_name    VARCHAR(20)  NOT NULL,
    
    PRIMARY KEY (category_code),
    
    CONSTRAINT chk_cat_code_fixed
        CHECK (category_code IN ('CH', 'CA', 'ST', 'CO'))
);

CREATE TABLE Restaurants (
    restaurant_id     INT          GENERATED ALWAYS AS IDENTITY, 
    restaurant_name   VARCHAR(50)  NOT NULL,  
    location    VARCHAR(50)  NOT NULL, 
    phone       VARCHAR(50)  NOT NULL,  
    category_code    VARCHAR(20)  NOT NULL,  
    intro       TEXT         NULL,    
    register_date    DATE         NOT NULL,   
    
    PRIMARY KEY (restaurant_id),
    
    FOREIGN KEY (category_code) REFERENCES Categories(category_code)
);

CREATE TABLE Reservations (
    reservation_id      INT          GENERATED ALWAYS AS IDENTITY, 
    user_id     VARCHAR(20)  NOT NULL,            
    restaurant_id     INT          NOT NULL,            
    reservation_time    DATETIME     NOT NULL,           
    count       INT          NOT NULL,          
    status      VARCHAR(20)  NOT NULL,           
    
    PRIMARY KEY (reservation_id),
    
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    
    CONSTRAINT chk_count CHECK (count >= 1),
    
    CONSTRAINT chk_status CHECK (status IN ('대기', '확정', '취소', '완료'))
);

CREATE TABLE Reviews (
    review_id   INT          GENERATED ALWAYS AS IDENTITY, 
    restaurant_id     INT          NOT NULL,                
    user_id     VARCHAR(20)  NOT NULL,              
    rating      INT          NOT NULL,              
    content     VARCHAR(500) NULL,                 
    created_at  DATETIME     NOT NULL,               
    
    PRIMARY KEY (review_id),
    
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    
    CONSTRAINT chk_rating CHECK (rating >= 1 AND rating <= 5)
);