INSERT INTO carcontrol.brand(id, name) VALUES ('2e954f95-619f-4022-9242-06d9627954a8','Ford');
INSERT INTO carcontrol.brand(id, name) VALUES ('4472b89a-e49e-455f-ad3e-c0b50dda0549','General Motors');
INSERT INTO carcontrol.brand(id, name) VALUES ('91f9a8a7-2912-4d8e-9b81-cf6e9f4edd74', 'Fiat');
INSERT INTO carcontrol.brand(id, name) VALUES ('ab6bf451-6fc5-4617-87a4-375cfe3cbc72', 'Toyota');

INSERT INTO carcontrol.car(id, license_plate, brand_id) VALUES ('d0b75a4f-2e4a-41a8-b7a6-d49ec73633ec', 'AAA-3344', '91f9a8a7-2912-4d8e-9b81-cf6e9f4edd74');
INSERT INTO carcontrol.car(id, license_plate, brand_id) VALUES ('07a9aad3-2808-47c2-b751-7d1fdce6f075', 'BBB-1234', 'ab6bf451-6fc5-4617-87a4-375cfe3cbc72');
INSERT INTO carcontrol.car(id, license_plate, brand_id) VALUES ('32bbb568-9a60-42ac-8547-bb8c26156751', 'CCC-5545', '4472b89a-e49e-455f-ad3e-c0b50dda0549');

INSERT INTO carcontrol.user(id, username, first_name, last_name, car_id) VALUES ('98a4519f-eb97-4a43-ad89-142f4930a83e','zaquinha.comidagratis', 'Zaca', 'Comida Grátis', '32bbb568-9a60-42ac-8547-bb8c26156751');
INSERT INTO carcontrol.user(id, username, first_name, last_name, car_id) VALUES ('1b9951a8-09bf-4f56-8109-55ed1fe4285f','nosfe.sugasangue', 'Nosferatu', 'Suga Sangue', 'd0b75a4f-2e4a-41a8-b7a6-d49ec73633ec');







