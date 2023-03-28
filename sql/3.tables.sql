DROP TABLE IF EXISTS carcontrol.brand;

CREATE TABLE IF NOT EXISTS carcontrol.brand(
  id uuid DEFAULT uuid_generate_v4 (),
  name varchar(30) not null,
  PRIMARY KEY (id)
);


DROP TABLE IF EXISTS carcontrol.car;

CREATE TABLE IF NOT EXISTS carcontrol.car(
  id uuid DEFAULT uuid_generate_v4 (),
  license_plate varchar(20) not null,
  brand_id uuid,
  PRIMARY KEY (id),
  CONSTRAINT fk_brand
    FOREIGN KEY (brand_id)
      REFERENCES carcontrol.brand(id)
);


DROP TABLE IF EXISTS carcontrol.user;

CREATE TABLE IF NOT EXISTS carcontrol.user(
  id uuid DEFAULT uuid_generate_v4 (),
  username varchar(50) not null,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  car_id uuid,
  PRIMARY KEY (id),
  CONSTRAINT fk_car
    FOREIGN KEY (car_id)
      REFERENCES carcontrol.car(id)
);