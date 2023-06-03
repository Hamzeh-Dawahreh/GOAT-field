


CREATE TABLE users (
  user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL, 
  user_email VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL,
  role VARCHAR(255) 
);

CREATE TABLE pitch (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  price NUMERIC,
  size VARCHAR(100),
  details TEXT,
  images BYTEA[],
  description TEXT,
  location TEXT
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  date VARCHAR,
  time VARCHAR,
  name VARCHAR,
  phone VARCHAR,
  user_id UUID REFERENCES users(user_id)
);

-- ! This is from Mais, for payment info
CREATE TABLE payment_info (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    card_number VARCHAR(16) NOT NULL,
    expiration_date VARCHAR (7)NOT NULL,
    security_code VARCHAR(3) NOT NULL,
    name_on_card VARCHAR(255) NOT NULL
);

