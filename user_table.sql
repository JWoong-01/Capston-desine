CREATE TABLE users (

    user_id INT AUTO_INCREMENT PRIMARY KEY,  -- 고유 사용자 ID
    username VARCHAR(50) NOT NULL,           -- 사용자 이름 (로그인용)
    email VARCHAR(100) NOT NULL UNIQUE,      -- 이메일 (로그인 및 연락처용)
    password_hash VARCHAR(255) NOT NULL,     -- 비밀번호 해시
    phone_number VARCHAR(20),                -- 전화번호 (선택 사항)    
    birth_date DATE,                         -- 생년월일 (선택 사항)
    gender ENUM('male', 'female'),  		 -- 성별 (선택 사항)
    signup_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 가입 일자
    last_login TIMESTAMP,                    -- 마지막 로그인 시간
    status ENUM('active', 'inactive', 'banned') DEFAULT 'active',  -- 사용자 상태    
    reset_password VARCHAR(255),       		 -- 비밀번호 재설정 (선택 사항)    
    UNIQUE (username),                       -- 사용자 이름 고유
    UNIQUE (email)                           -- 이메일 고유
);

