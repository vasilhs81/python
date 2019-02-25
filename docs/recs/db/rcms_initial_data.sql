select * from rcms.cabin_class;
select * from rcms.flights_by_id;
select * from rcms.flights_by_id;
--select * from inselair.sita_mock;

select * from rcms.flight_group;
select * from rcms.service_by_id;
select * from rcms.service_by_pos;
select * from rcms.service_by_price;

select * from rcms.service_by_id where id='SVC00001';
select * from rcms.service_by_status_and_pos;
select * from rcms.service_categories_by_id;
select * from rcms.flights_by_name;
INSERT INTO rcms.service_by_id
(id, service_applicability_id, price_optimization_id, points_of_sale_id, amount, currency, "language", miles, name, points_of_sale_name, price_optimization_name, refundable, rich_content_id, rich_content_name, service_applicability_name, service_category_code, service_category_id, service_category_name, settlement, status, tax, version)
VALUES('SVC00001', 'RS00001', '', 'POS00033', 200, 'usd', 'en', 0, 'BILL Service1', 'Inselair AUA-CUR', NULL, true, 'RC00018', 'Pets', 'BILL Rule1', 'CM', 'SC10112', 'Communication', '1', 'active', 100, 16433ef0-423b-4b66-98a4-49a8b6a1cb90);

select * from rcms.roles_by_id;

select * from rcms.airport;
select * from rcms.entity_dependency;
----------
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'CTS','New Chitose Airport','SPK','Sapporo','JP','Japan','AS','Asia',NULL,656dd300-afe7-48b5-8478-888d009881a7);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'FCO','Fiumicino International','RM','Rome','IT','Italy','EU','Europe',NULL,f9d7083b-c67d-4dcb-b1b0-c21a3a8605d0);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'HND','Haneda Airport - Tokyo International Airport','TYO','Tokyo','JP','Japan','AS','Asia',NULL,28612ef3-c519-4bbc-8c6a-11c407ad5dfb);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'CHQ','I. Daskalogiannis','CHQ','Chania','GR','Greece','EU','Europe',NULL,48864625-0e87-40a0-96a8-f7c5003d222b);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'AUA','Aruba','AU','Aruba','AU','Aruba','CR','Caribbean',NULL,645d91de-c568-4d6d-9491-972be1bc47a0);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'MCO','Orlando','MCO','Orlando','US','United States of America','FL','Florida',NULL,c884d8fe-e73f-4387-84dd-c3fc13bfcfa8);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'ATH','Eleftherios Venizelos','ATH','Athens','GR','Greece','EU','Europe',NULL,e810c3bd-bc70-473c-b90c-dd0795f411ed);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'FRA','Frankfurt Airport','FRA','Frankfurt','GE','Germany','EU','Europe',NULL,13a0ae81-b844-4a9c-a8bf-a4391a3dab99);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'BON','Bonaire','BA','Bonaire','BA','Bonaire','CR','Caribbean',NULL,6582446f-9e82-4717-a8da-5caa5d27fc9b);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'CUR','Curacao','CU','Curacao','CU','Curacao','CR','Caribbean',NULL,1bcfe134-720b-422e-950b-71f52c662f36);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'MIA','Miami International Airport','MIA','Miami','US','United States of America','FL','Florida',NULL,a8d97c16-7765-4f4a-951c-54ec4a651394);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'SXM','Saint Maarten','SM','Saint Maarten','SM','Saint Maarten','CR','Caribbean',NULL,8e0d32e4-5ca5-4d36-9084-f7a2833c82df);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'CDG','Charles de Gaulle Airport','PAR','Paris','FR','France','EU','Europe',NULL,6629fbd3-11f8-4798-8af6-f3ef25672321);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'FUK','Fukuoka Airport','FUK','Fukuoka','JP','Japan','AS','Asia',NULL,60e34db4-b2fd-4c19-a0c9-00f64cdb6b16);
INSERT INTO rcms.airport (airport_code,airport_name,city_code,city_name,country_code,country_name,region_code,region_name,solr_query,version) VALUES (
'THR','Mehrabad International Airport','THR','Tehran','IR','IRAN','MIDEAST','Middle East',NULL,f361e787-680f-4f30-ad0c-4949e339e366);


INSERT INTO rcms.service_by_pos (points_of_sale_id,id,service_applicability_id,amount,currency,"language",miles,name,points_of_sale_name,price_optimization_id,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
'POS10112','SVC00001','RS00052',5,'usd','en',2000,'Extra Bag, Gold FQTV','Europe / Middle East','PO0001','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);
INSERT INTO rcms.service_by_pos (points_of_sale_id,id,service_applicability_id,amount,currency,"language",miles,name,points_of_sale_name,price_optimization_id,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
'POS10112','SVC00020','RS00052',2,'usd','en',5000,'Fast check in','Europe / Middle East','PO0001','Child discount',false,'RC00013','Pets','Bags NRT','IE','SC10110','Inflight Entertainment','4','inactive',5,2ffc8016-2837-4570-9c17-51298ae60fab);
INSERT INTO rcms.service_by_pos (points_of_sale_id,id,service_applicability_id,amount,currency,"language",miles,name,points_of_sale_name,price_optimization_id,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
'POS10110','SVC00001','RS00052',5,'gbp','fr',2000,'Extra Bag, Gold FQTV','South-West Pacific','PO0001','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);
INSERT INTO rcms.service_by_pos (points_of_sale_id,id,service_applicability_id,amount,currency,"language",miles,name,points_of_sale_name,price_optimization_id,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
'POS10111','SVC00001','RS00052',5,'cny','de',2000,'Extra Bag, Gold FQTV','Corporate DE','PO0001','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);

INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
5,'SVC00001','RS00052','PO0001','POS10109','eur','en',2000,'Extra Bag, Gold FQTV','Europe Greece','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);
INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
5,'SVC00001','RS00052','PO0001','POS10110','gbp','fr',2000,'Extra Bag, Gold FQTV','South-West Pacific','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);
INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
5,'SVC00001','RS00052','PO0001','POS10111','cny','de',2000,'Extra Bag, Gold FQTV','Corporate DE','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);
INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
5,'SVC00001','RS00052','PO0001','POS10112','usd','en',2000,'Extra Bag, Gold FQTV','Europe / Middle East','Child discount',true,'RC00013','Pets','Bags NRT','ML','SC10111','Meal','1','active',90,c0996ae3-cf5b-4f8d-bf50-c0b0a9e5fa99);
INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
0,'SVC00023','RS00047','PO00004','POS10109','eur','en',0,'WiFi','Europe Greece','Agent discount',false,'RC00018','Pets','European Originating Flights','IE','SC10110','Inflight Entertainment',NULL,'active',0,80f5fd27-6e54-4021-b03a-167300a0c358);
INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
2,'SVC00020','RS00052','PO00004','POS10112','usd','en',5000,'Fast check in','Europe / Middle East','Agent discount',false,'RC00013','Pets','Bags NRT','IE','SC10110','Inflight Entertainment','4','inactive',5,2ffc8016-2837-4570-9c17-51298ae60fab);
INSERT INTO rcms.service_by_price (amount,id,service_applicability_id,price_optimization_id,points_of_sale_id,currency,"language",miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES (
2,'SVC00020','RS00052','PO0001','POS10112','usd','en',5000,'Fast check in','Europe / Middle East','Child discount',false,'RC00013','Pets','Bags NRT','IE','SC10110','Inflight Entertainment','4','inactive',5,2ffc8016-2837-4570-9c17-51298ae60fab);

INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'SEAT','SC00110','Seat Extra Legroom',1e19b35b-7018-486b-97ea-32d7ed853dc9);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'ST','SC00106','Seat',3106aef9-6dc6-49e5-b184-87f15cb5ec48);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'CM','SC10112','Communication',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'IC','SC00123','Internet Connection',75dbdd07-238f-4baa-98e5-3994f971bbfb);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'GT','SC00039','Ground Transportation',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'IE','SC10110','Inflight Entertainment',d97c987e-a0ad-420f-b04e-27612b982e17);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'BG4','SC00109','Fourth Bag',e7a104e9-29f9-4cf3-b08a-81168b1737e9);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'LG','SC00040','Lounge',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'ML','SC10111','Meal',dbaa3123-fadb-4edb-a885-6d1c546e73b3);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'BG','SC10109','Baggage',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'PT','SC00041','Pets',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_code (code,id,name,version) VALUES (
'MLS','SC00111','Meal Beverage',580c0b10-5428-4911-8d11-ebeb8cedee93);

INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00110','SEAT','Seat Extra Legroom',1e19b35b-7018-486b-97ea-32d7ed853dc9);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC10110','IE','Inflight Entertainment',d97c987e-a0ad-420f-b04e-27612b982e17);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00111','MLS','Meal Beverage',580c0b10-5428-4911-8d11-ebeb8cedee93);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC10111','ML','Meal',dbaa3123-fadb-4edb-a885-6d1c546e73b3);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00123','IC','Internet Connection',75dbdd07-238f-4baa-98e5-3994f971bbfb);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00040','LG','Lounge',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC10112','CM','Communication',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC10109','BG','Baggage',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00109','BG4','Fourth Bag',e7a104e9-29f9-4cf3-b08a-81168b1737e9);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00106','ST','Seat',3106aef9-6dc6-49e5-b184-87f15cb5ec48);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00041','PT','Pets',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_id (id,code,name,version) VALUES (
'SC00039','GT','Ground Transportation',02d6b94d-0852-400b-a883-c6fe05d38ee5);

INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Communication','SC10112','CM',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Internet Connection','SC00123','IC',75dbdd07-238f-4baa-98e5-3994f971bbfb);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Meal Beverage','SC00111','MLS',580c0b10-5428-4911-8d11-ebeb8cedee93);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'asd','SC00085','asd',84df7b6c-804e-4afd-8f9a-b32198b1f57e);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'asd','SC00114','asd',b11b2ab4-f601-438f-a216-fb0ab4f9e53a);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Meal','SC10111','ML',dbaa3123-fadb-4edb-a885-6d1c546e73b3);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Ground Transportation','SC00039','GT',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Lounge','SC00040','LG',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Fourth Bag','SC00109','BG4',e7a104e9-29f9-4cf3-b08a-81168b1737e9);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Seat Extra Legroom','SC00110','SEAT',1e19b35b-7018-486b-97ea-32d7ed853dc9);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Inflight Entertainment','SC10110','IE',d97c987e-a0ad-420f-b04e-27612b982e17);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Pets','SC00041','PT',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00077','XX',4c795ecc-f1c9-4275-be16-94c056524e8c);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00081','XX',32859027-95ef-4f09-b44a-ac6dcb32b95f);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00083','XX',a74b0b18-f3de-4339-a916-5dbba83a98dc);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00084','XX',6748b169-209c-49e5-a4b3-4da62b136e4b);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00091','XX',46e9b436-5395-4008-87ce-9b619ff85349);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00092','XX',2e9610f4-b80a-4084-9f42-5b7b7ab563ca);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00093','XX',febbcbc0-a6d1-4492-ac07-8237f6dd6260);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00095','XX',8ebf55b5-e8b6-4438-bd33-3554524342c4);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00097','XX',c5b38443-fbbf-49a0-a49c-1da1ad29569e);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00098','XX',fbf0d8ff-2573-4d34-81db-2e13c444f102);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'XXXXX','SC00099','XX',dbfce206-fe38-446e-bdf4-148229d58bd9);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'SeaT','SC00110','SEAT',5c1bd966-0211-4deb-aa55-eb48c503e279);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Baggage','SC10109','BG',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Secong Bag','SC00107','BG2',50658065-8205-4780-8dae-98f708f66249);
INSERT INTO rcms.service_categories_by_name (name,id,code,version) VALUES (
'Seat','SC00106','ST',3106aef9-6dc6-49e5-b184-87f15cb5ec48);

INSERT INTO rcms.flight_group_by_name (name,id,flight_id,destination,flight_name,origin,status,tags,version) VALUES (
'Aruba to St Maarten','FG00012','FL00035','CUR','7I402','AUA',NULL,NULL,07778bf8-6315-46bf-92cd-4eee897074b8);
INSERT INTO rcms.flight_group_by_name (name,id,flight_id,destination,flight_name,origin,status,tags,version) VALUES (
'Aruba to St Maarten','FG00012','FL00044','SXM','7I511','CUR',NULL,NULL,07778bf8-6315-46bf-92cd-4eee897074b8);
INSERT INTO rcms.flight_group_by_name (name,id,flight_id,destination,flight_name,origin,status,tags,version) VALUES (
'asd','FG00005','FL00011','ASD','ASD','ASD',NULL,NULL,40874425-53bb-4a4b-b5d4-0c60c2c891c4);
INSERT INTO rcms.flight_group_by_name (name,id,flight_id,destination,flight_name,origin,status,tags,version) VALUES (
'Test FG','FG00013','FL00049','CUR','161','AUA',NULL,NULL,8569fa2b-16f8-4ba0-834f-7d04e3ae8fea);
INSERT INTO rcms.flight_group_by_name (name,id,flight_id,destination,flight_name,origin,status,tags,version) VALUES (
'Test FG','FG00013','FL00106','HN','NH50','CTS',NULL,NULL,8569fa2b-16f8-4ba0-834f-7d04e3ae8fea);

INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CTS','FL00104','NH69','HND',9047167d-b04b-4540-9c63-7f03477d758d);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CTS','FL00105','NH79','HND',2eacacd1-137e-4749-9337-446d3f5379bc);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CTS','FL00110','NH289','FUK',d8b31557-03f6-409a-86ec-01d26f84ab82);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00077','NH240','FUK',45a079ef-f279-4266-a72d-706d7bd7bfb8);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00078','NH3840','FUK',444be4a3-e597-4527-b59e-2442be0fe9a0);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00079','NH242','FUK',d16515f1-7d08-4aa5-88fd-0b000c8a27b6);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00080','NH244','FUK',86a961d3-c2af-4f4e-bc8d-2229defd8a7b);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00081','NH3842','FUK',12960d8e-2023-4308-b2fd-a3fc1d0931d3);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00082','NH246','FUK',f47b25b7-283b-46e3-8b55-359e57dbbcae);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00083','NH248','FUK',6bd9f1c7-2060-4a4d-a7b0-02d94803e2f5);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00084','NH250','FUK',3e498171-961e-4189-8a7f-ba83efff1947);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00085','NH3844','FUK',61c47868-0676-4fa9-b807-debfbff07c3e);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00086','NH252','FUK',2ebadf9c-0398-4bad-8e3a-b57db7c18b41);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00087','NH3846','FUK',a312651d-02f5-49c6-99a6-abcd1c94ebaa);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00088','NH254','FUK',7a8dda11-e3ec-467e-8ffc-7218ebb6be43);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00089','NH256','FUK',799359ba-39ea-4768-aba6-d2fc8aaa3036);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00090','NH3848','FUK',85be9d1d-eec8-473e-9c41-51fb9e5074e5);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00091','NH258','FUK',cd45cce9-0b0c-43b8-9823-0feb747a5ad0);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00092','NH3850','FUK',8019390b-cf31-4f37-996f-e50e849dee0a);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00093','NH260','FUK',39d7d5f5-42cb-4c85-8d38-3f7af04f6fcf);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00094','NH262','FUK',b9c9d11b-a474-4318-b0f2-68c161fe2b80);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00095','NH264','FUK',ad867789-815b-4e71-845d-6ee34accfcc2);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00096','NH266','FUK',fda45481-af6a-4b1a-ada7-a7552c15719f);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00097','NH3852','FUK',084719ea-0bd0-45f6-bdf8-4dd4a6b6cf2f);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00098','NH268','FUK',d3fb3ed6-91b3-43d5-911c-d576fba58b0e);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00099','NH270','FUK',4cba1a3f-d6d4-4aac-b1d1-ae10eb9be108);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00100','NH272','FUK',a936a86f-f35b-4f26-9432-e94a3a6942fe);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00101','NH3854','FUK',69bcc77e-7dbb-4c72-9eef-fde1b40d4b3e);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00102','NH274','FUK',a813f4b9-715c-4468-90bd-5ef420f98c18);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00107','NH62','CTS',43c5b523-3888-4d1a-86b6-2d0414a58ef7);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00108','NH72','CTS',5e6ffccc-55de-4176-9eda-ddd51b4d33e1);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HND','FL00109','NH74','CTS',cd0519f5-3a60-4165-bc04-0a73130f8a44);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CHQ','FL00004','A3265','ATH',2cf728a7-6a43-4e7c-a6ff-a5e9a5718f69);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'AUA','FL00042','401','CUR',a5066a99-8dd4-4e8f-9f96-ab565ea2d159);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'AUA','FL00043','403','CUR',8c4e45f7-6e20-4c07-817f-a950a205c09d);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'MCO','FL00112','345','MIA',bcaf1cd4-922b-48d8-ae34-c391e921a666);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'ATH','FL00032','OA119','SKG',559fd342-f82a-4f23-9678-86f1defba980);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'BON','FL00040','7I301','CUR',6ee5250a-0493-4d8c-9131-6c4ed79e91a3);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'BON','FL00041','7I305','CUR',404f1425-0e86-43ca-8ff5-b03e1e94330c);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'HN','FL00106','NH50','CTS',ca3a39b9-127c-4e9d-80cf-d3fcebff954a);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00035','7I402','AUA',0127c245-bbda-450e-ac08-38e4e1f4290a);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00036','7I404','AUA',e00447d3-f0da-4ce4-8120-01bde5ff5fe0);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00037','7I302','BON',447952b4-3122-41bb-994f-5fedd244e0e3);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00038','7I304','BON',09852711-0d16-4d81-88c0-2392aa56a355);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00039','7I310','BON',67ce0edf-53b0-4028-941d-b4478f0ed36f);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00046','402','AUA',2fd09298-6ef7-43e6-b74d-fabfd170299c);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00047','443','AUA',fa83053a-5dd1-419c-830d-d2ac4c32e14b);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00048','416','AUA',fc4b9867-9bce-4f57-8f4f-1604500b6616);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00049','161','AUA',1d457229-8919-4853-abbe-2c627deb0898);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CUR','FL00050','408','AUA',c5373aa5-2777-421b-b0e5-4df7f52cc0d2);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'SXM','FL00044','511','CUR',66d9162b-95a7-433b-b86b-63595336891a);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'SXM','FL00045','511','CUR',6a4bfe98-e745-4ca4-903b-3c9abd53178b);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00051','NH239','HND',af1e4775-bed0-46a9-ad09-d01095659f59);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00052','NH3841','HND',a5e685fe-12b9-44f8-9255-18fdaf55b464);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00053','NH241','HND',2d8b79c9-d16f-405a-9d8d-5f1aa2e48517);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00054','NH243','HND',870dcb8b-4be5-46ca-9d4f-5d9ceadb2b18);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00055','NH245','HND',66e4ec2e-adc0-4ba0-9e1d-06cbda1b1a15);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00056','NH3843','HND',b4dd4578-bf06-4ea0-b59f-281a4321fb6c);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00057','NH247','HND',c01ee9c0-b625-45f9-8707-169c6f282a2f);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00058','NH3845','HND',2a529ccd-6eee-4a64-9089-7476f83302c5);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00059','NH249','HND',f3013f78-2529-4727-a06d-d4b2b70bafae);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00060','NH251','HND',3808cb26-e14f-4309-a0d1-3d2646c9e934);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00061','NH3847','HND',7e62ebb0-1563-442a-abae-43132eec4664);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00062','NH253','HND',fcbdba3c-78a1-40e2-94df-a6e68ef7e922);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00063','NH3849','HND',c04d9aab-bf21-47db-9451-0753ba647764);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00064','NH255','HND',b3e160bf-ff86-4828-bdae-7448c01d7008);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00065','NH257','HND',fd9a120b-0950-4889-bd79-f656a6850240);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00066','NH259','HND',1d4db00e-1e7b-4d7c-a8a6-7b1ef3dba16f);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00067','NH261','HND',a723af28-1f9e-4ad6-a27c-94414dbc15fb);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00068','NH3851','HND',375b82f9-a9c9-4c97-b3b0-c835f6f3e3da);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00069','NH263','HND',e60973ce-3f98-4957-a6eb-eb19fdc4b4f1);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00070','NH265','HND',e8287f73-6626-4620-8b09-5380f75398cb);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00071','NH267','HND',cc0f10ba-ca8b-4fd8-9029-7575ae6a95a9);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00072','NH3853','HND',dfc9a2db-2fa9-4662-acd4-aa3e527ad8f6);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00073','NH269','HND',49d77747-d77b-419e-95e9-37bd6761979b);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00074','NH271','HND',41757d50-abbb-4ddb-b2c3-415d1bbe8947);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00075','NH273','HND',7be634c5-fec2-4159-9269-22cce15a46d5);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00076','NH3855','HND',f6550c74-0f85-4be3-84e9-a2713aea5948);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'FUK','FL00111','NH290','CTS',79c011f9-8431-40a8-89a1-03046a6dee9a);
INSERT INTO rcms.flights_by_destination (destination,flight_id,name,origin,version) VALUES (
'CT','FL00103','NH55','HND',7ed18b99-5412-42d3-a77f-726ced70bee1);


INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00049','CUR','161','AUA',1d457229-8919-4853-abbe-2c627deb0898);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00106','HN','NH50','CTS',ca3a39b9-127c-4e9d-80cf-d3fcebff954a);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00097','HND','NH3852','FUK',084719ea-0bd0-45f6-bdf8-4dd4a6b6cf2f);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00051','FUK','NH239','HND',af1e4775-bed0-46a9-ad09-d01095659f59);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00072','FUK','NH3853','HND',dfc9a2db-2fa9-4662-acd4-aa3e527ad8f6);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00061','FUK','NH3847','HND',7e62ebb0-1563-442a-abae-43132eec4664);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00092','HND','NH3850','FUK',8019390b-cf31-4f37-996f-e50e849dee0a);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00085','HND','NH3844','FUK',61c47868-0676-4fa9-b807-debfbff07c3e);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00045','SXM','511','CUR',6a4bfe98-e745-4ca4-903b-3c9abd53178b);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00043','AUA','403','CUR',8c4e45f7-6e20-4c07-817f-a950a205c09d);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00058','FUK','NH3845','HND',2a529ccd-6eee-4a64-9089-7476f83302c5);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00075','FUK','NH273','HND',7be634c5-fec2-4159-9269-22cce15a46d5);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00101','HND','NH3854','FUK',69bcc77e-7dbb-4c72-9eef-fde1b40d4b3e);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00062','FUK','NH253','HND',fcbdba3c-78a1-40e2-94df-a6e68ef7e922);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00090','HND','NH3848','FUK',85be9d1d-eec8-473e-9c41-51fb9e5074e5);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00109','HND','NH74','CTS',cd0519f5-3a60-4165-bc04-0a73130f8a44);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00099','HND','NH270','FUK',4cba1a3f-d6d4-4aac-b1d1-ae10eb9be108);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00064','FUK','NH255','HND',b3e160bf-ff86-4828-bdae-7448c01d7008);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00082','HND','NH246','FUK',f47b25b7-283b-46e3-8b55-359e57dbbcae);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00079','HND','NH242','FUK',d16515f1-7d08-4aa5-88fd-0b000c8a27b6);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00055','FUK','NH245','HND',66e4ec2e-adc0-4ba0-9e1d-06cbda1b1a15);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00080','HND','NH244','FUK',86a961d3-c2af-4f4e-bc8d-2229defd8a7b);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00060','FUK','NH251','HND',3808cb26-e14f-4309-a0d1-3d2646c9e934);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00081','HND','NH3842','FUK',12960d8e-2023-4308-b2fd-a3fc1d0931d3);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00100','HND','NH272','FUK',a936a86f-f35b-4f26-9432-e94a3a6942fe);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00074','FUK','NH271','HND',41757d50-abbb-4ddb-b2c3-415d1bbe8947);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00104','CTS','NH69','HND',9047167d-b04b-4540-9c63-7f03477d758d);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00098','HND','NH268','FUK',d3fb3ed6-91b3-43d5-911c-d576fba58b0e);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00042','AUA','401','CUR',a5066a99-8dd4-4e8f-9f96-ab565ea2d159);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00073','FUK','NH269','HND',49d77747-d77b-419e-95e9-37bd6761979b);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00063','FUK','NH3849','HND',c04d9aab-bf21-47db-9451-0753ba647764);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00091','HND','NH258','FUK',cd45cce9-0b0c-43b8-9823-0feb747a5ad0);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00044','SXM','511','CUR',66d9162b-95a7-433b-b86b-63595336891a);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00083','HND','NH248','FUK',6bd9f1c7-2060-4a4d-a7b0-02d94803e2f5);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00089','HND','NH256','FUK',799359ba-39ea-4768-aba6-d2fc8aaa3036);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00054','FUK','NH243','HND',870dcb8b-4be5-46ca-9d4f-5d9ceadb2b18);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00111','FUK','NH290','CTS',79c011f9-8431-40a8-89a1-03046a6dee9a);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00095','HND','NH264','FUK',ad867789-815b-4e71-845d-6ee34accfcc2);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00052','FUK','NH3841','HND',a5e685fe-12b9-44f8-9255-18fdaf55b464);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00084','HND','NH250','FUK',3e498171-961e-4189-8a7f-ba83efff1947);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00110','CTS','NH289','FUK',d8b31557-03f6-409a-86ec-01d26f84ab82);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00032','ATH','OA119','SKG',559fd342-f82a-4f23-9678-86f1defba980);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00067','FUK','NH261','HND',a723af28-1f9e-4ad6-a27c-94414dbc15fb);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00069','FUK','NH263','HND',e60973ce-3f98-4957-a6eb-eb19fdc4b4f1);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00048','CUR','416','AUA',fc4b9867-9bce-4f57-8f4f-1604500b6616);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00070','FUK','NH265','HND',e8287f73-6626-4620-8b09-5380f75398cb);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00057','FUK','NH247','HND',c01ee9c0-b625-45f9-8707-169c6f282a2f);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00050','CUR','408','AUA',c5373aa5-2777-421b-b0e5-4df7f52cc0d2);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00103','CT','NH55','HND',7ed18b99-5412-42d3-a77f-726ced70bee1);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00068','FUK','NH3851','HND',375b82f9-a9c9-4c97-b3b0-c835f6f3e3da);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00087','HND','NH3846','FUK',a312651d-02f5-49c6-99a6-abcd1c94ebaa);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00108','HND','NH72','CTS',5e6ffccc-55de-4176-9eda-ddd51b4d33e1);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00036','CUR','7I404','AUA',e00447d3-f0da-4ce4-8120-01bde5ff5fe0);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00107','HND','NH62','CTS',43c5b523-3888-4d1a-86b6-2d0414a58ef7);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00053','FUK','NH241','HND',2d8b79c9-d16f-405a-9d8d-5f1aa2e48517);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00037','CUR','7I302','BON',447952b4-3122-41bb-994f-5fedd244e0e3);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00086','HND','NH252','FUK',2ebadf9c-0398-4bad-8e3a-b57db7c18b41);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00040','BON','7I301','CUR',6ee5250a-0493-4d8c-9131-6c4ed79e91a3);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00093','HND','NH260','FUK',39d7d5f5-42cb-4c85-8d38-3f7af04f6fcf);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00094','HND','NH262','FUK',b9c9d11b-a474-4318-b0f2-68c161fe2b80);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00056','FUK','NH3843','HND',b4dd4578-bf06-4ea0-b59f-281a4321fb6c);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00076','FUK','NH3855','HND',f6550c74-0f85-4be3-84e9-a2713aea5948);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00041','BON','7I305','CUR',404f1425-0e86-43ca-8ff5-b03e1e94330c);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00047','CUR','443','AUA',fa83053a-5dd1-419c-830d-d2ac4c32e14b);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00096','HND','NH266','FUK',fda45481-af6a-4b1a-ada7-a7552c15719f);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00004','CHQ','A3265','ATH',2cf728a7-6a43-4e7c-a6ff-a5e9a5718f69);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00038','CUR','7I304','BON',09852711-0d16-4d81-88c0-2392aa56a355);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00078','HND','NH3840','FUK',444be4a3-e597-4527-b59e-2442be0fe9a0);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00035','CUR','7I402','AUA',0127c245-bbda-450e-ac08-38e4e1f4290a);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00077','HND','NH240','FUK',45a079ef-f279-4266-a72d-706d7bd7bfb8);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00112','MCO','345','MIA',bcaf1cd4-922b-48d8-ae34-c391e921a666);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00088','HND','NH254','FUK',7a8dda11-e3ec-467e-8ffc-7218ebb6be43);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00059','FUK','NH249','HND',f3013f78-2529-4727-a06d-d4b2b70bafae);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00066','FUK','NH259','HND',1d4db00e-1e7b-4d7c-a8a6-7b1ef3dba16f);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00071','FUK','NH267','HND',cc0f10ba-ca8b-4fd8-9029-7575ae6a95a9);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00065','FUK','NH257','HND',fd9a120b-0950-4889-bd79-f656a6850240);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00102','HND','NH274','FUK',a813f4b9-715c-4468-90bd-5ef420f98c18);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00046','CUR','402','AUA',2fd09298-6ef7-43e6-b74d-fabfd170299c);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00105','CTS','NH79','HND',2eacacd1-137e-4749-9337-446d3f5379bc);
INSERT INTO rcms.flights_by_id (flight_id,destination,name,origin,version) VALUES (
'FL00039','CUR','7I310','BON',67ce0edf-53b0-4028-941d-b4478f0ed36f);


INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'403','FL00043','AUA','CUR',8c4e45f7-6e20-4c07-817f-a950a205c09d);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I310','FL00039','CUR','BON',67ce0edf-53b0-4028-941d-b4478f0ed36f);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH256','FL00089','HND','FUK',799359ba-39ea-4768-aba6-d2fc8aaa3036);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3840','FL00078','HND','FUK',444be4a3-e597-4527-b59e-2442be0fe9a0);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH270','FL00099','HND','FUK',4cba1a3f-d6d4-4aac-b1d1-ae10eb9be108);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH257','FL00065','FUK','HND',fd9a120b-0950-4889-bd79-f656a6850240);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'408','FL00050','CUR','AUA',c5373aa5-2777-421b-b0e5-4df7f52cc0d2);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH264','FL00095','HND','FUK',ad867789-815b-4e71-845d-6ee34accfcc2);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'416','FL00048','CUR','AUA',fc4b9867-9bce-4f57-8f4f-1604500b6616);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH268','FL00098','HND','FUK',d3fb3ed6-91b3-43d5-911c-d576fba58b0e);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH244','FL00080','HND','FUK',86a961d3-c2af-4f4e-bc8d-2229defd8a7b);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH273','FL00075','FUK','HND',7be634c5-fec2-4159-9269-22cce15a46d5);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3842','FL00081','HND','FUK',12960d8e-2023-4308-b2fd-a3fc1d0931d3);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH258','FL00091','HND','FUK',cd45cce9-0b0c-43b8-9823-0feb747a5ad0);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'511','FL00044','SXM','CUR',66d9162b-95a7-433b-b86b-63595336891a);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'511','FL00045','SXM','CUR',6a4bfe98-e745-4ca4-903b-3c9abd53178b);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'402','FL00046','CUR','AUA',2fd09298-6ef7-43e6-b74d-fabfd170299c);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH260','FL00093','HND','FUK',39d7d5f5-42cb-4c85-8d38-3f7af04f6fcf);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH245','FL00055','FUK','HND',66e4ec2e-adc0-4ba0-9e1d-06cbda1b1a15);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3847','FL00061','FUK','HND',7e62ebb0-1563-442a-abae-43132eec4664);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH255','FL00064','FUK','HND',b3e160bf-ff86-4828-bdae-7448c01d7008);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH290','FL00111','FUK','CTS',79c011f9-8431-40a8-89a1-03046a6dee9a);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'A3265','FL00004','CHQ','ATH',2cf728a7-6a43-4e7c-a6ff-a5e9a5718f69);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'345','FL00112','MCO','MIA',bcaf1cd4-922b-48d8-ae34-c391e921a666);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3843','FL00056','FUK','HND',b4dd4578-bf06-4ea0-b59f-281a4321fb6c);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH69','FL00104','CTS','HND',9047167d-b04b-4540-9c63-7f03477d758d);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH241','FL00053','FUK','HND',2d8b79c9-d16f-405a-9d8d-5f1aa2e48517);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH62','FL00107','HND','CTS',43c5b523-3888-4d1a-86b6-2d0414a58ef7);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3848','FL00090','HND','FUK',85be9d1d-eec8-473e-9c41-51fb9e5074e5);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH263','FL00069','FUK','HND',e60973ce-3f98-4957-a6eb-eb19fdc4b4f1);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH246','FL00082','HND','FUK',f47b25b7-283b-46e3-8b55-359e57dbbcae);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3841','FL00052','FUK','HND',a5e685fe-12b9-44f8-9255-18fdaf55b464);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH251','FL00060','FUK','HND',3808cb26-e14f-4309-a0d1-3d2646c9e934);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH242','FL00079','HND','FUK',d16515f1-7d08-4aa5-88fd-0b000c8a27b6);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'OA119','FL00032','ATH','SKG',559fd342-f82a-4f23-9678-86f1defba980);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH79','FL00105','CTS','HND',2eacacd1-137e-4749-9337-446d3f5379bc);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH55','FL00103','CT','HND',7ed18b99-5412-42d3-a77f-726ced70bee1);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH261','FL00067','FUK','HND',a723af28-1f9e-4ad6-a27c-94414dbc15fb);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH50','FL00106','HN','CTS',ca3a39b9-127c-4e9d-80cf-d3fcebff954a);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH266','FL00096','HND','FUK',fda45481-af6a-4b1a-ada7-a7552c15719f);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3850','FL00092','HND','FUK',8019390b-cf31-4f37-996f-e50e849dee0a);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH259','FL00066','FUK','HND',1d4db00e-1e7b-4d7c-a8a6-7b1ef3dba16f);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH262','FL00094','HND','FUK',b9c9d11b-a474-4318-b0f2-68c161fe2b80);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I402','FL00035','CUR','AUA',0127c245-bbda-450e-ac08-38e4e1f4290a);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH274','FL00102','HND','FUK',a813f4b9-715c-4468-90bd-5ef420f98c18);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH249','FL00059','FUK','HND',f3013f78-2529-4727-a06d-d4b2b70bafae);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH267','FL00071','FUK','HND',cc0f10ba-ca8b-4fd8-9029-7575ae6a95a9);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH74','FL00109','HND','CTS',cd0519f5-3a60-4165-bc04-0a73130f8a44);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3852','FL00097','HND','FUK',084719ea-0bd0-45f6-bdf8-4dd4a6b6cf2f);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH254','FL00088','HND','FUK',7a8dda11-e3ec-467e-8ffc-7218ebb6be43);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3855','FL00076','FUK','HND',f6550c74-0f85-4be3-84e9-a2713aea5948);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH72','FL00108','HND','CTS',5e6ffccc-55de-4176-9eda-ddd51b4d33e1);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH243','FL00054','FUK','HND',870dcb8b-4be5-46ca-9d4f-5d9ceadb2b18);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH289','FL00110','CTS','FUK',d8b31557-03f6-409a-86ec-01d26f84ab82);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'443','FL00047','CUR','AUA',fa83053a-5dd1-419c-830d-d2ac4c32e14b);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3846','FL00087','HND','FUK',a312651d-02f5-49c6-99a6-abcd1c94ebaa);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH248','FL00083','HND','FUK',6bd9f1c7-2060-4a4d-a7b0-02d94803e2f5);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I305','FL00041','BON','CUR',404f1425-0e86-43ca-8ff5-b03e1e94330c);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3854','FL00101','HND','FUK',69bcc77e-7dbb-4c72-9eef-fde1b40d4b3e);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I301','FL00040','BON','CUR',6ee5250a-0493-4d8c-9131-6c4ed79e91a3);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH250','FL00084','HND','FUK',3e498171-961e-4189-8a7f-ba83efff1947);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3851','FL00068','FUK','HND',375b82f9-a9c9-4c97-b3b0-c835f6f3e3da);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3853','FL00072','FUK','HND',dfc9a2db-2fa9-4662-acd4-aa3e527ad8f6);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I404','FL00036','CUR','AUA',e00447d3-f0da-4ce4-8120-01bde5ff5fe0);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH239','FL00051','FUK','HND',af1e4775-bed0-46a9-ad09-d01095659f59);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3849','FL00063','FUK','HND',c04d9aab-bf21-47db-9451-0753ba647764);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH253','FL00062','FUK','HND',fcbdba3c-78a1-40e2-94df-a6e68ef7e922);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH269','FL00073','FUK','HND',49d77747-d77b-419e-95e9-37bd6761979b);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3844','FL00085','HND','FUK',61c47868-0676-4fa9-b807-debfbff07c3e);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH247','FL00057','FUK','HND',c01ee9c0-b625-45f9-8707-169c6f282a2f);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH3845','FL00058','FUK','HND',2a529ccd-6eee-4a64-9089-7476f83302c5);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH265','FL00070','FUK','HND',e8287f73-6626-4620-8b09-5380f75398cb);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH252','FL00086','HND','FUK',2ebadf9c-0398-4bad-8e3a-b57db7c18b41);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I302','FL00037','CUR','BON',447952b4-3122-41bb-994f-5fedd244e0e3);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'401','FL00042','AUA','CUR',a5066a99-8dd4-4e8f-9f96-ab565ea2d159);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'7I304','FL00038','CUR','BON',09852711-0d16-4d81-88c0-2392aa56a355);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH272','FL00100','HND','FUK',a936a86f-f35b-4f26-9432-e94a3a6942fe);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH271','FL00074','FUK','HND',41757d50-abbb-4ddb-b2c3-415d1bbe8947);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'161','FL00049','CUR','AUA',1d457229-8919-4853-abbe-2c627deb0898);
INSERT INTO rcms.flights_by_name (name,flight_id,destination,origin,version) VALUES (
'NH240','FL00077','HND','FUK',45a079ef-f279-4266-a72d-706d7bd7bfb8);

INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CTS','FL00106','HN','NH50',ca3a39b9-127c-4e9d-80cf-d3fcebff954a);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CTS','FL00107','HND','NH62',43c5b523-3888-4d1a-86b6-2d0414a58ef7);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CTS','FL00108','HND','NH72',5e6ffccc-55de-4176-9eda-ddd51b4d33e1);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CTS','FL00109','HND','NH74',cd0519f5-3a60-4165-bc04-0a73130f8a44);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CTS','FL00111','FUK','NH290',79c011f9-8431-40a8-89a1-03046a6dee9a);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'SKG','FL00032','ATH','OA119',559fd342-f82a-4f23-9678-86f1defba980);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00051','FUK','NH239',af1e4775-bed0-46a9-ad09-d01095659f59);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00052','FUK','NH3841',a5e685fe-12b9-44f8-9255-18fdaf55b464);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00053','FUK','NH241',2d8b79c9-d16f-405a-9d8d-5f1aa2e48517);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00054','FUK','NH243',870dcb8b-4be5-46ca-9d4f-5d9ceadb2b18);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00055','FUK','NH245',66e4ec2e-adc0-4ba0-9e1d-06cbda1b1a15);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00056','FUK','NH3843',b4dd4578-bf06-4ea0-b59f-281a4321fb6c);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00057','FUK','NH247',c01ee9c0-b625-45f9-8707-169c6f282a2f);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00058','FUK','NH3845',2a529ccd-6eee-4a64-9089-7476f83302c5);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00059','FUK','NH249',f3013f78-2529-4727-a06d-d4b2b70bafae);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00060','FUK','NH251',3808cb26-e14f-4309-a0d1-3d2646c9e934);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00061','FUK','NH3847',7e62ebb0-1563-442a-abae-43132eec4664);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00062','FUK','NH253',fcbdba3c-78a1-40e2-94df-a6e68ef7e922);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00063','FUK','NH3849',c04d9aab-bf21-47db-9451-0753ba647764);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00064','FUK','NH255',b3e160bf-ff86-4828-bdae-7448c01d7008);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00065','FUK','NH257',fd9a120b-0950-4889-bd79-f656a6850240);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00066','FUK','NH259',1d4db00e-1e7b-4d7c-a8a6-7b1ef3dba16f);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00067','FUK','NH261',a723af28-1f9e-4ad6-a27c-94414dbc15fb);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00068','FUK','NH3851',375b82f9-a9c9-4c97-b3b0-c835f6f3e3da);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00069','FUK','NH263',e60973ce-3f98-4957-a6eb-eb19fdc4b4f1);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00070','FUK','NH265',e8287f73-6626-4620-8b09-5380f75398cb);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00071','FUK','NH267',cc0f10ba-ca8b-4fd8-9029-7575ae6a95a9);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00072','FUK','NH3853',dfc9a2db-2fa9-4662-acd4-aa3e527ad8f6);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00073','FUK','NH269',49d77747-d77b-419e-95e9-37bd6761979b);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00074','FUK','NH271',41757d50-abbb-4ddb-b2c3-415d1bbe8947);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00075','FUK','NH273',7be634c5-fec2-4159-9269-22cce15a46d5);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00076','FUK','NH3855',f6550c74-0f85-4be3-84e9-a2713aea5948);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00103','CT','NH55',7ed18b99-5412-42d3-a77f-726ced70bee1);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00104','CTS','NH69',9047167d-b04b-4540-9c63-7f03477d758d);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'HND','FL00105','CTS','NH79',2eacacd1-137e-4749-9337-446d3f5379bc);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00035','CUR','7I402',0127c245-bbda-450e-ac08-38e4e1f4290a);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00036','CUR','7I404',e00447d3-f0da-4ce4-8120-01bde5ff5fe0);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00046','CUR','402',2fd09298-6ef7-43e6-b74d-fabfd170299c);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00047','CUR','443',fa83053a-5dd1-419c-830d-d2ac4c32e14b);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00048','CUR','416',fc4b9867-9bce-4f57-8f4f-1604500b6616);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00049','CUR','161',1d457229-8919-4853-abbe-2c627deb0898);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'AUA','FL00050','CUR','408',c5373aa5-2777-421b-b0e5-4df7f52cc0d2);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'ATH','FL00004','CHQ','A3265',2cf728a7-6a43-4e7c-a6ff-a5e9a5718f69);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'BON','FL00037','CUR','7I302',447952b4-3122-41bb-994f-5fedd244e0e3);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'BON','FL00038','CUR','7I304',09852711-0d16-4d81-88c0-2392aa56a355);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'BON','FL00039','CUR','7I310',67ce0edf-53b0-4028-941d-b4478f0ed36f);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CUR','FL00040','BON','7I301',6ee5250a-0493-4d8c-9131-6c4ed79e91a3);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CUR','FL00041','BON','7I305',404f1425-0e86-43ca-8ff5-b03e1e94330c);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CUR','FL00042','AUA','401',a5066a99-8dd4-4e8f-9f96-ab565ea2d159);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CUR','FL00043','AUA','403',8c4e45f7-6e20-4c07-817f-a950a205c09d);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CUR','FL00044','SXM','511',66d9162b-95a7-433b-b86b-63595336891a);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'CUR','FL00045','SXM','511',6a4bfe98-e745-4ca4-903b-3c9abd53178b);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'MIA','FL00112','MCO','345',bcaf1cd4-922b-48d8-ae34-c391e921a666);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00077','HND','NH240',45a079ef-f279-4266-a72d-706d7bd7bfb8);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00078','HND','NH3840',444be4a3-e597-4527-b59e-2442be0fe9a0);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00079','HND','NH242',d16515f1-7d08-4aa5-88fd-0b000c8a27b6);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00080','HND','NH244',86a961d3-c2af-4f4e-bc8d-2229defd8a7b);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00081','HND','NH3842',12960d8e-2023-4308-b2fd-a3fc1d0931d3);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00082','HND','NH246',f47b25b7-283b-46e3-8b55-359e57dbbcae);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00083','HND','NH248',6bd9f1c7-2060-4a4d-a7b0-02d94803e2f5);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00084','HND','NH250',3e498171-961e-4189-8a7f-ba83efff1947);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00085','HND','NH3844',61c47868-0676-4fa9-b807-debfbff07c3e);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00086','HND','NH252',2ebadf9c-0398-4bad-8e3a-b57db7c18b41);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00087','HND','NH3846',a312651d-02f5-49c6-99a6-abcd1c94ebaa);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00088','HND','NH254',7a8dda11-e3ec-467e-8ffc-7218ebb6be43);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00089','HND','NH256',799359ba-39ea-4768-aba6-d2fc8aaa3036);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00090','HND','NH3848',85be9d1d-eec8-473e-9c41-51fb9e5074e5);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00091','HND','NH258',cd45cce9-0b0c-43b8-9823-0feb747a5ad0);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00092','HND','NH3850',8019390b-cf31-4f37-996f-e50e849dee0a);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00093','HND','NH260',39d7d5f5-42cb-4c85-8d38-3f7af04f6fcf);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00094','HND','NH262',b9c9d11b-a474-4318-b0f2-68c161fe2b80);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00095','HND','NH264',ad867789-815b-4e71-845d-6ee34accfcc2);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00096','HND','NH266',fda45481-af6a-4b1a-ada7-a7552c15719f);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00097','HND','NH3852',084719ea-0bd0-45f6-bdf8-4dd4a6b6cf2f);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00098','HND','NH268',d3fb3ed6-91b3-43d5-911c-d576fba58b0e);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00099','HND','NH270',4cba1a3f-d6d4-4aac-b1d1-ae10eb9be108);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00100','HND','NH272',a936a86f-f35b-4f26-9432-e94a3a6942fe);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00101','HND','NH3854',69bcc77e-7dbb-4c72-9eef-fde1b40d4b3e);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00102','HND','NH274',a813f4b9-715c-4468-90bd-5ef420f98c18);
INSERT INTO rcms.flights_by_origin (origin,flight_id,destination,name,version) VALUES (
'FUK','FL00110','CTS','NH289',d8b31557-03f6-409a-86ec-01d26f84ab82);

INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00007','ATH','Eleftherios Venizelos','ATH','Athens','GR','Greece','Greece Area','EU','Europe',6e10ae23-8859-49c5-9bcd-a0da2703cd43);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00009','XXX','All','XXX','All','XXX','All','AUA-CUR','XXX','All',246bb1e9-93ad-48b2-9346-10010c14494c);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00006','XXX','All','XXX','All','XXX','All','Asia','AS','Asia',22f322f1-3c3d-49ad-ad0a-268815760453);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00004','XXX','All','XXX','All','XXX','All','Entire World','XXX','All',fc027584-2a2e-4f2c-bfb6-e3586f36630b);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00008','MIA','Miami International Airport','MIA','Miami','US','United States of America','Inselair AUA-CUR','FL','Florida',7d2d9298-4e91-4e8d-9a0c-e3f3aefe8c86);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00002','ATH','Athens International Airport','ATH','Athens','GR','Greece','El.Venizelos','EUR','Europe',5d99fbbb-5ba9-4512-9660-7a3de46642e4);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00003','XXX','All','XXX','All','XXX','All','All Europe','EUR','Europe',367a0d42-4c86-4962-8837-413080de2104);
INSERT INTO rcms.geographical_area (id,airport_code,airport_name,city_code,city_name,country_code,country_name,name,region_code,region_name,version) VALUES (
'GEO00001','ATH','Athens International Airport','ATH','Athens','GR','Greece','TestGeo','EUR','Europe',a863f7a0-fa68-41b9-a510-bbbfa2d07a62);

INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00001','2017-07-05 20:01:03.000','RCMS','02d6b94d-0852-400b-a883-c6fe05d38ee5.jpeg',45820,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00004','2017-06-27 20:36:19.000','RCMS','e1a008db-6b04-4b20-b63d-fd8cc034c58a.jpeg',310195,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00008','49481-10-07 12:00:00.000','RCMS','c4f42bc9-f47f-453d-bf3b-e0cb6d4e3751.jpeg',14265,NULL,'IMAGE',8bbcd421-ae49-4bd0-b5f1-e92197b8438e);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00017','49424-12-07 22:50:00.000','YOUTUBE','eeBrAg0a3wM',0,NULL,'VIDEO',a14a859c-9084-431b-a493-38a8625ba241);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00015','2017-06-15 19:39:09.000','YOUTUBE','VovylZ3lfLc',NULL,NULL,'VIDEO',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00007','2017-07-06 13:35:24.000','RCMS','c6d4bcb7-b026-4f80-88b1-c0aed4fd2165.jpeg',51339,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00002','2017-06-27 20:35:47.000','RCMS','c0b7ae2b-d4a5-40f8-86d5-29d9122966ce.jpeg',464110,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00005','2017-06-27 20:35:48.000','RCMS','12f9abfd-1017-47fd-9d51-67cefa8ecc06.jpeg',582614,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00013','49425-02-26 02:56:40.000','RCMS','455394a2-77a7-4a01-acaa-e4163b195bdc.jpeg',53685,NULL,'IMAGE',0cdff80b-f58b-4b72-b676-78d32b25d246);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00011','2017-06-27 20:36:57.000','RCMS','462f918d-4512-4a60-b086-a29a07743ba2.jpeg',154648,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00014','2017-06-15 19:33:56.000','YOUTUBE','hERFEBCIuJI',NULL,NULL,'VIDEO',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00010','47489895-04-29 01:33:20.000','RCMS','25963ab0-0f09-4fd3-b2b5-45cdffeff967.jpeg',469173,NULL,'IMAGE',425cab30-2fce-41b8-94e0-5645362dfa87);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00016','49455-02-18 16:26:40.000','YOUTUBE','biPuo1ppIZA',0,NULL,'VIDEO',2e988ee5-1b51-457d-9a6d-610ed264defa);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00012','2017-06-27 20:36:57.000','RCMS','d8d6fc36-eb1c-46fd-99a1-402a7fdbdd4b.jpeg',303898,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00006','2017-07-07 15:34:11.000','RCMS','31237f30-18be-450d-9e80-112be8aab193.jpeg',53137,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00003','2017-06-19 14:34:11.000','RCMS','2861122f-2c91-45bd-ab1e-36f2150d19e7.jpeg',551378,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media (id,created_at,provider,provider_id,"size",tags,"type",version) VALUES (
'MD00009','2017-06-27 20:36:19.000','RCMS','a8d9ecfb-7d49-44ad-a6af-6aea4886e7e4.jpeg',406214,NULL,'IMAGE',02d6b94d-0852-400b-a883-c6fe05d38ee5);


INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00014','2017-06-15 22:33:56.000','YOUTUBE','hERFEBCIuJI',0,NULL,fcab5dc4-a0a3-41be-bacc-53649fa5d708);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00015','2017-06-15 22:39:09.000','YOUTUBE','VovylZ3lfLc',0,NULL,4fb0f2e6-93e3-4281-bdb5-01efda3c78bb);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00016','2017-06-15 22:39:09.000','YOUTUBE','biPuo1ppIZA',0,NULL,97d39411-57a0-4df6-9888-2b1e69f09b13);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00017','2017-06-15 22:39:09.000','YOUTUBE','eeBrAg0a3wM',0,NULL,c6c3431c-42f8-4c19-9db2-c7ea84ab67a8);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00001','2017-07-05 23:01:03.000','RCMS','02d6b94d-0852-400b-a883-c6fe05d38ee5.jpeg',45820,NULL,b89a8d57-4d9a-4af9-bff3-12ad9bf683f1);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00002','2017-06-27 23:35:47.000','RCMS','c0b7ae2b-d4a5-40f8-86d5-29d9122966ce.jpeg',464110,NULL,5d069f04-e90d-4a70-a627-736e9ff376b4);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00004','2017-06-27 23:36:19.000','RCMS','e1a008db-6b04-4b20-b63d-fd8cc034c58a.jpeg',310195,NULL,0a47d555-8655-4d6f-bb21-6fcb63a02346);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00005','2017-06-27 23:35:48.000','RCMS','12f9abfd-1017-47fd-9d51-67cefa8ecc06.jpeg',582614,NULL,b711913c-4240-41d8-a7c6-71bff5f420b5);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00007','2017-07-06 16:35:24.000','RCMS','c6d4bcb7-b026-4f80-88b1-c0aed4fd2165.jpeg',51339,NULL,7e35ec2f-5a49-4042-a259-24cf3838f05d);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00008','2017-06-15 22:39:09.000','RCMS','c4f42bc9-f47f-453d-bf3b-e0cb6d4e3751.jpeg',14265,NULL,df881afe-5aee-4d1f-88b9-97b4a59e5aef);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00010','2017-06-15 22:39:09.000','RCMS','25963ab0-0f09-4fd3-b2b5-45cdffeff967.jpeg',469173,NULL,f64a1ad2-5070-4be0-a234-6073f98a6438);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00011','2017-06-27 23:36:57.000','RCMS','462f918d-4512-4a60-b086-a29a07743ba2.jpeg',154648,NULL,ade3f578-98b2-4d2a-815f-f42336996ef5);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00013','2017-06-15 22:39:09.000','RCMS','455394a2-77a7-4a01-acaa-e4163b195bdc.jpeg',53685,NULL,076b6646-e3e7-4437-a3ea-e40f0496f55a);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00048','2017-08-07 11:56:16.607','RCMS','b8c005a9-0dcf-4ec0-b4de-4ce80cfecf2d.jpeg',53137,NULL,115639df-8942-4ccd-93ab-4c342a98ed9d);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00070','2017-11-06 17:05:38.805','RCMS','6c3b3a9c-24c8-46b1-9baf-c6344502f874.jpeg',68435,NULL,6a2bf919-b716-488a-bb84-035cea2feafc);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00071','2017-11-07 11:52:33.781','RCMS','d1e22cc4-cfb9-41a9-8e0b-f649f6c4ec3c.jpeg',107218,NULL,0440502e-e83b-4ad5-a207-eaca41092d37);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00076','2017-11-14 15:35:51.869','RCMS','7a689d05-0a16-4226-876e-22f37fcbf8df.jpg',17080,NULL,d5728a5d-ce01-4421-8f23-993dcc0f56bc);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00081','2018-02-08 10:43:53.781','RCMS','21c1f77f-92aa-4695-a5b4-8d5fc43aa24d.jpg',8398,NULL,d42c2090-869d-4da6-bb69-652a390960a9);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00082','2018-02-12 10:04:16.275','RCMS','7efa49d6-65f6-4618-a3a5-9d6ce3f97f78.jpg',10750,NULL,1aebb9f4-78e4-45fe-996b-ea86f266b565);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00083','2018-02-12 10:04:30.305','RCMS','14c387cd-e81f-4c10-8c01-9064c19baa33.jpg',5790,NULL,3c36edf7-e7bb-4db4-b205-3961e52f25d6);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00085','2018-07-06 11:11:29.073','RCMS','704a8270-7d35-4fe8-8a68-ba252d9d77f5.jpg',57062,NULL,9ec0447d-1c45-48b1-b1c1-9db592f47626);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00086','2018-08-30 18:44:15.285','RCMS','c043539a-0659-4170-b568-ec8d91d54305.png',188337,NULL,73ea79b5-a543-4ba7-a6f8-1798d523c490);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00087','2018-08-30 18:44:15.243','RCMS','d5ce8dda-f1f3-4c5b-88ad-299fbacdafc9.png',132244,NULL,4cb57595-97cc-4466-9b54-64ebd173cde6);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00088','2018-08-30 18:44:15.330','RCMS','74853227-18fd-43cd-9555-022cdb26e2df.png',185683,NULL,fceecf0e-c376-4354-9ec4-fc49c4c9a618);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00089','2018-08-30 18:44:15.312','RCMS','6e129fe8-01d3-42a0-ae4a-6c9cff543928.png',197031,NULL,34c4ba65-91db-4c7e-8e92-2350a84e4571);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00090','2018-10-10 12:02:52.196','RCMS','32804003-8464-44fe-9817-eedb47a74bfc.jpg',41138,NULL,6054fe68-6ce1-47ca-94a1-9967b5804abc);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00091','2018-10-31 11:05:34.503','RCMS','f4e6e11b-def0-41c7-8eb5-1f2f72dff80c.jpg',46164,NULL,245a3d7d-56b1-464e-bf6a-30f44ad2cfe1);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00092','2018-10-31 12:27:02.538','RCMS','5b3b1a8a-dae6-46db-beab-e8ad1a3b11b7.jpg',9502,NULL,cfc51c65-e7a7-4d3a-8b03-d190cdee01a0);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00093','2018-10-31 12:27:02.762','RCMS','c3e7e0c3-fe8d-4c46-a731-48eeff15c6a2.jpg',41960,NULL,f1de8619-7d50-4a35-a88e-dfa9f0916e17);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00094','2018-10-31 12:40:08.708','RCMS','9c8be585-8a23-4181-a9b4-032f4877ecba.jpg',57220,NULL,d2190a9f-5204-46dd-8aa8-137df004cbac);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00095','2018-10-31 12:41:01.941','RCMS','1b378b3f-ec77-42d1-86d1-ddb0bff5a46b.jpg',57220,NULL,fad6b7c6-542a-4e72-8a5f-2d76ac4b8b65);
INSERT INTO rcms.media_by_id ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00096','2018-10-31 12:41:02.711','RCMS','633d82a7-9856-4034-9eda-1f8ee0fe52b8.jpg',170011,NULL,ccfe7b4b-0722-4133-9bc0-b6b186735272);


INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00014','2017-06-15 16:33:56.000','YOUTUBE','hERFEBCIuJI',NULL,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00015','2017-06-15 16:39:09.000','YOUTUBE','VovylZ3lfLc',NULL,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00016','2017-06-15 16:33:56.000','YOUTUBE','biPuo1ppIZA',0,NULL,2e988ee5-1b51-457d-9a6d-610ed264defa);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'VIDEO','MD00017','2017-06-15 16:33:56.000','YOUTUBE','eeBrAg0a3wM',0,NULL,a14a859c-9084-431b-a493-38a8625ba241);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00001','2017-07-05 17:01:03.000','RCMS','02d6b94d-0852-400b-a883-c6fe05d38ee5.jpeg',45820,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00002','2017-06-27 17:35:47.000','RCMS','c0b7ae2b-d4a5-40f8-86d5-29d9122966ce.jpeg',464110,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00003','2017-06-19 11:34:11.000','RCMS','2861122f-2c91-45bd-ab1e-36f2150d19e7.jpeg',551378,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00004','2017-06-27 17:36:19.000','RCMS','e1a008db-6b04-4b20-b63d-fd8cc034c58a.jpeg',310195,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00005','2017-06-27 17:35:48.000','RCMS','12f9abfd-1017-47fd-9d51-67cefa8ecc06.jpeg',582614,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00006','2017-07-07 12:34:11.000','RCMS','31237f30-18be-450d-9e80-112be8aab193.jpeg',53137,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00007','2017-07-06 10:35:24.000','RCMS','c6d4bcb7-b026-4f80-88b1-c0aed4fd2165.jpeg',51339,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00008','2017-06-15 16:33:56.000','RCMS','c4f42bc9-f47f-453d-bf3b-e0cb6d4e3751.jpeg',14265,NULL,8bbcd421-ae49-4bd0-b5f1-e92197b8438e);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00009','2017-06-27 17:36:19.000','RCMS','a8d9ecfb-7d49-44ad-a6af-6aea4886e7e4.jpeg',406214,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00010','2017-04-28 22:33:20.000','RCMS','25963ab0-0f09-4fd3-b2b5-45cdffeff967.jpeg',469173,NULL,425cab30-2fce-41b8-94e0-5645362dfa87);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00011','2017-06-27 17:36:57.000','RCMS','462f918d-4512-4a60-b086-a29a07743ba2.jpeg',154648,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00012','2017-06-27 17:36:57.000','RCMS','d8d6fc36-eb1c-46fd-99a1-402a7fdbdd4b.jpeg',303898,NULL,02d6b94d-0852-400b-a883-c6fe05d38ee5);
INSERT INTO rcms.media_by_type ("type",id,created_at,provider,provider_id,"size",tags,version) VALUES (
'IMAGE','MD00013','2017-06-15 16:33:56.000','RCMS','455394a2-77a7-4a01-acaa-e4163b195bdc.jpeg',53685,NULL,0cdff80b-f58b-4b72-b676-78d32b25d246);

INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00026','GEO00004','SL00004','XXX','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','Entire World','en','Mobile App','All','7I','7I','Inselair','Travel Agent',46ac76a0-0a59-4568-a869-1d5275935df7);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00008','SL00004','FL','US','MIA','2','MIA','Miami International Airport','Miami','United States of America','usd','Web browser','Inselair AUA-CUR','en','Inselair AUA-CUR','Florida','7I','7I','Inselair','Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00008','SL00004','FL','US','MIA','4','MIA','Miami International Airport','Miami','United States of America','usd','Mobile device','Inselair AUA-CUR','en','Inselair AUA-CUR','Florida','7I','7I','Inselair','Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00008','SL00006','FL','US','MIA','2','MIA','Miami International Airport','Miami','United States of America','usd','Web browser','Inselair AUA-CUR','en','Inselair AUA-CUR','Florida','MBA','MBA','Mobile App','Mobile App',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00008','SL00006','FL','US','MIA','4','MIA','Miami International Airport','Miami','United States of America','usd','Mobile device','Inselair AUA-CUR','en','Inselair AUA-CUR','Florida','MBA','MBA','Mobile App','Mobile App',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00008','SL00012','FL','US','MIA','2','MIA','Miami International Airport','Miami','United States of America','usd','Web browser','Inselair AUA-CUR','en','Inselair AUA-CUR','Florida','7FEPOLW','54135131','Web Browser','Online Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00008','SL00012','FL','US','MIA','4','MIA','Miami International Airport','Miami','United States of America','usd','Mobile device','Inselair AUA-CUR','en','Inselair AUA-CUR','Florida','7FEPOLW','54135131','Web Browser','Online Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00009','SL00004','XXX','XXX','XXX','2','XXX','All','All','All','usd','Web browser','AUA-CUR','en','Inselair AUA-CUR','All','7I','7I','Inselair','Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00009','SL00004','XXX','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','AUA-CUR','en','Inselair AUA-CUR','All','7I','7I','Inselair','Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00009','SL00006','XXX','XXX','XXX','2','XXX','All','All','All','usd','Web browser','AUA-CUR','en','Inselair AUA-CUR','All','MBA','MBA','Mobile App','Mobile App',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00009','SL00006','XXX','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','AUA-CUR','en','Inselair AUA-CUR','All','MBA','MBA','Mobile App','Mobile App',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00009','SL00012','XXX','XXX','XXX','2','XXX','All','All','All','usd','Web browser','AUA-CUR','en','Inselair AUA-CUR','All','7FEPOLW','54135131','Web Browser','Online Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00033','GEO00009','SL00012','XXX','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','AUA-CUR','en','Inselair AUA-CUR','All','7FEPOLW','54135131','Web Browser','Online Travel Agent',0ff19ed9-8e08-4545-8578-b98d903b2dbc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00032','GEO00003','','EUR','XXX','XXX','3','XXX','All','All','All','eur','Airport kiosk','All Europe','en','All Europe','Europe','','','','',9d281b2f-99c5-42a8-85ff-78616698f6bc);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00029','GEO00003','','EUR','XXX','XXX','2','XXX','All','All','All','usd','Web browser','All Europe','en','Asia-Europe Regions','Europe','','','','',308c28b7-1138-4a7c-9f0d-0bfa9c00ebed);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00029','GEO00006','','AS','XXX','XXX','2','XXX','All','All','All','usd','Web browser','Asia','en','Asia-Europe Regions','Asia','','','','',308c28b7-1138-4a7c-9f0d-0bfa9c00ebed);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00030','GEO00002','SL00006','EUR','GR','ATH','2','ATH','Athens International Airport','Athens','Greece','eur','Web browser','El.Venizelos','en','El.Venizelos - Travel Agency','Europe','MBA','MBA','Mobile App','Mobile App',e659fac7-9269-4eb2-8a6b-4b948383cc72);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00030','GEO00002','SL00006','EUR','GR','ATH','4','ATH','Athens International Airport','Athens','Greece','eur','Mobile device','El.Venizelos','en','El.Venizelos - Travel Agency','Europe','MBA','MBA','Mobile App','Mobile App',e659fac7-9269-4eb2-8a6b-4b948383cc72);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00030','GEO00002','SL00012','EUR','GR','ATH','2','ATH','Athens International Airport','Athens','Greece','eur','Web browser','El.Venizelos','en','El.Venizelos - Travel Agency','Europe','7FEPOLW','54135131','Web Browser','Online Travel Agent',e659fac7-9269-4eb2-8a6b-4b948383cc72);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00030','GEO00002','SL00012','EUR','GR','ATH','4','ATH','Athens International Airport','Athens','Greece','eur','Mobile device','El.Venizelos','en','El.Venizelos - Travel Agency','Europe','7FEPOLW','54135131','Web Browser','Online Travel Agent',e659fac7-9269-4eb2-8a6b-4b948383cc72);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00028','GEO00006','SL00007','AS','XXX','XXX','1','XXX','All','All','All','usd','Agent terminal','Asia','en','Asia','Asia','nh','nh','NH','Travel Agent',be75fd1a-63f1-4ecc-a543-823e4e5ed0fd);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00028','GEO00006','SL00007','AS','XXX','XXX','2','XXX','All','All','All','usd','Web browser','Asia','en','Asia','Asia','nh','nh','NH','Travel Agent',be75fd1a-63f1-4ecc-a543-823e4e5ed0fd);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00028','GEO00006','SL00007','AS','XXX','XXX','3','XXX','All','All','All','usd','Airport kiosk','Asia','en','Asia','Asia','nh','nh','NH','Travel Agent',be75fd1a-63f1-4ecc-a543-823e4e5ed0fd);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00028','GEO00006','SL00007','AS','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','Asia','en','Asia','Asia','nh','nh','NH','Travel Agent',be75fd1a-63f1-4ecc-a543-823e4e5ed0fd);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00028','GEO00006','SL00007','AS','XXX','XXX','5','XXX','All','All','All','usd','Other','Asia','en','Asia','Asia','nh','nh','NH','Travel Agent',be75fd1a-63f1-4ecc-a543-823e4e5ed0fd);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00028','GEO00006','SL00007','AS','XXX','XXX','6','XXX','All','All','All','usd','Unknown','Asia','en','Asia','Asia','nh','nh','NH','Travel Agent',be75fd1a-63f1-4ecc-a543-823e4e5ed0fd);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00031','GEO00003','SL00011','EUR','XXX','XXX','2','XXX','All','All','All','eur','Web browser','All Europe','en','Europe','Europe','1AOLKI','75634984','Royal Air Maroc','Online Travel Agent',ac4c8d3a-c0f6-4f6c-ad32-dead9c2ceb66);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00031','GEO00003','SL00011','EUR','XXX','XXX','4','XXX','All','All','All','eur','Mobile device','All Europe','en','Europe','Europe','1AOLKI','75634984','Royal Air Maroc','Online Travel Agent',ac4c8d3a-c0f6-4f6c-ad32-dead9c2ceb66);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00019','GEO00004','SL00004','XXX','XXX','XXX','2','XXX','All','All','All','usd','Web browser','Entire World','en','Inselair All Regions','All','7I','7I','Inselair','Travel Agent',7a2fbf1b-10f6-4343-80ab-037aa2bd3aea);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00019','GEO00004','SL00004','XXX','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','Entire World','en','Inselair All Regions','All','7I','7I','Inselair','Travel Agent',7a2fbf1b-10f6-4343-80ab-037aa2bd3aea);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00019','GEO00004','SL00010','XXX','XXX','XXX','2','XXX','All','All','All','usd','Web browser','Entire World','en','Inselair All Regions','All','6CFWNS','34679871','Travel World Agency','Travel Agent',7a2fbf1b-10f6-4343-80ab-037aa2bd3aea);
INSERT INTO rcms.point_of_sale (id,geographical_area_id,seller_id,region_code,country_code,city_code,device_code,airport_code,airport_name,city_name,country_name,currency,device_id,geographical_area_name,"language",name,region_name,seller_agency_code,seller_iata_code,seller_name,seller_type,version) VALUES (
'POS00019','GEO00004','SL00010','XXX','XXX','XXX','4','XXX','All','All','All','usd','Mobile device','Entire World','en','Inselair All Regions','All','6CFWNS','34679871','Travel World Agency','Travel Agent',7a2fbf1b-10f6-4343-80ab-037aa2bd3aea);

INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00032',0,'amount',-50.0,'percentage','Seat Selection Discount',{{rule_set_id:'RS00142',name:'Family with CHD - Destination Germany',tags:{'INF','Germany Frankfurt','Family','CHD'}}},8ffb87c5-6fd3-4a2a-afec-af89238d8c6b);
INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00029',0,'amount',10.0,'amount','Fri&Sun Markup',{{rule_set_id:'RS00134',name:'FriSun Markup',tags:{'Early Morning','Price Optimization'}}},c9ab67ca-713a-4b51-b83c-d308a7978a94);
INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00031',0,'amount',-50.0,'percentage','Family Meal 50% Discount',{{rule_set_id:'RS00136',name:'Inselair_ADTwithCHD',tags:{'ADTwithCHD','Price Optimization'}}},1d4efe8c-fe45-4f28-9948-1c7681026180);
INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00028',0,'amount',-10.0,'amount','Mid-Week Discount except Sat',{{rule_set_id:'RS00133',name:'Mid-Week Discount',tags:{'not Friday','Price Optimization','not Sunday'}}},3180eacd-f410-4f6a-8d9f-b893245c2e58);
INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00034',0,'percentage',-50.0,'percentage','Inselair 2nd bag ADT with INF -50% 11-28/02',{{rule_set_id:'RS00151',name:'ADT with INF 11-28/02',tags:{'INF','ADT','Time Period'}}},aa69650f-546d-4d21-8b95-d5fe3294c69a);
INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00033',0,'amount',15.0,'percentage','1st Bag ATH-FRA',{{rule_set_id:'RS00146',name:'Economy ATH-FRA',tags:{'Economy','FRA','ATH'}}},3c013d83-928b-46b8-92a3-36d087117f0b);
INSERT INTO price_optimization (id,air_miles_amount,air_miles_type,monetary_amount,monetary_type,name,rule_sets,version) VALUES ('PO00030',0,'amount',-10.0,'amount','2nd Baggage Inselair CUR-AUA',{{rule_set_id:'RS00135',name:'CUR-AUA',tags:{'CURAUA','Price Optimization'}}},a22dec7e-f3d3-4ac0-ba0b-b8b3c0ea13fb);

INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00151','ADT with INF 11-28/02','{"groups":[{"groupOperator":"AND","groups":[{"groupDataId":"to_whom","operator":"AND","rules":[{"condition":"=","field":"passenger_type_codes","fieldValue":"ADT"},{"condition":"=","field":"traveling_with","fieldValue":"INF"}]},{"groupDataId":"when","operator":"AND","rules":[{"condition":">=","field":"departure_date","fieldValue":{"date":{"year":2019,"month":2,"day":11},"jsdate":"2019-02-10T22:00:00.000Z","formatted":"11/02/2019","epoc":1549836000}},{"condition":"<=","field":"departure_date","fieldValue":{"date":{"year":2019,"month":2,"day":28},"jsdate":"2019-02-27T22:00:00.000Z","formatted":"28/02/2019","epoc":1551304800}}]}]}]}',{'ADT','INF','Time Period'},3eae9c5e-25a3-4b7e-a3c0-16db69d1bcaa);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00140','Test rule set','{"groups":[]}',null,5585472c-d505-4f29-8aa7-476500d4b671);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00144','RAM_Europe_Holidays','{"groups":[{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"cabin_class","fieldValue":{"id":"CL00009","name":"Economy Flexible","code":"Y","version":"0ddb020d-93da-47f9-b8ab-521635bc2847"}}]},{"groupDataId":"when","operator":"AND","groupOperator":"AND","rules":[{"condition":">=","field":"booking_date","fieldValue":{"date":{"year":2018,"month":12,"day":10},"jsdate":"2018-12-09T22:00:00.000Z","formatted":"10/12/2018","epoc":1544392800}},{"condition":"<=","field":"booking_date","fieldValue":{"date":{"year":2019,"month":1,"day":5},"jsdate":"2019-01-04T22:00:00.000Z","formatted":"05/01/2019","epoc":1546639200}}]}]}',{'Europe','RAM'},9f303e33-3209-4db9-91e5-9e94e07d31b7);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00139','FFP rule set','{"groups":[{"groupDataId":"to_whom","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"passenger_type_codes","fieldValue":"ACC"},{"condition":"=","field":"passenger_type_codes","fieldValue":"ADT"}]},{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"reservation_booking_designators","fieldValue":{"id":"RBD00004","code":"RTY","version":"f6ff959f-c07e-40a3-b854-ed7940ba5771"}}]}]}',{'FFP'},91283380-ca4a-48c7-b332-d153e652c901);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00133','Mid-Week Discount','{"groups":[{"groupDataId":"when","operator":"AND","groupOperator":"AND","rules":[{"condition":"!=","field":"departure_day","fieldValue":"friday"},{"condition":"!=","field":"departure_day","fieldValue":"sunday"},{"condition":"!=","field":"departure_day","fieldValue":"saturday"}]}]}',{'Price Optimization','not Friday','not Sunday'},3bc2afe2-b072-44ba-bd12-68998b74142a);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00148','RAM 3','{"groups":[{"groupDataId":"to_whom","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"passenger_type_codes","fieldValue":"ADT"}]},{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"cabin_class","fieldValue":{"id":"CL00003","name":"Business Class","code":"C","version":"e9362041-d879-41fe-aa3a-67547627dfcc"}}]},{"groupDataId":"when","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"booking_date","fieldValue":{"date":{"year":2018,"month":12,"day":25},"jsdate":"2018-12-24T22:00:00.000Z","formatted":"25/12/2018","epoc":1545688800}}]}]}',null,e65e881b-c92a-4b7e-97a8-940f8fabe999);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00142','Family with CHD - Destination Germany','{"groups":[{"groupDataId":"where","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"destination_geographic","fieldValue":{"region":{"name":"Europe","code":"EU"},"country":{"name":"Germany","code":"GE","region":{"name":"Europe","code":"EU"}},"city":{"name":"Frankfurt","code":"FRA","country":{"name":"Germany","code":"GE","region":{"name":"Europe","code":"EU"}}},"airport":{"id":"000","name":"All","code":"XXX","city":{"id":"000","name":"All","code":"XXX","country":{"id":"000","name":"All","code":"XXX","region":{"id":"000","name":"All","code":"XXX"}}}}}}]},{"groupDataId":"to_whom","operator":"OR","groupOperator":"OR","rules":[{"condition":"=","field":"traveling_with","fieldValue":"CHD"},{"condition":"=","field":"traveling_with","fieldValue":"INF"}]}]}',{'CHD','Family','Germany Frankfurt','INF'},9eb9b49d-f193-4314-a052-a26e65fa62f5);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00145','Mediterenean Meal in Flight','{"groups":[{"groupDataId":"where","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"flight_number","fieldValue":{"id":"FL00044","version":"66d9162b-95a7-433b-b86b-63595336891a","origin":"CUR","destination":"SXM","code":"511"}}]}]}',{'Flight Number'},1594de23-3706-4980-ba3c-289e89e76e04);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00138','Destination NOT BON','{"groups":[{"groupDataId":"where","operator":"AND","groupOperator":"AND","rules":[{"condition":"!=","field":"destination_airport","fieldValue":{"name":"Bonaire","code":"BON","city":{"name":"Bonaire","code":"BA","country":{"name":"Bonaire","code":"BA","region":{"name":"Caribbean","code":"CR"}}},"version":"6582446f-9e82-4717-a8da-5caa5d27fc9b"}}]}]}',{'NotBON'},0478ebdc-9e7f-41f9-bc63-58fe31c01375);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00137','Destination CUR','{"groups":[{"groupDataId":"where","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"destination_airport","fieldValue":{"name":"Curacao","code":"CUR","city":{"name":"Curacao","code":"CU","country":{"name":"Curacao","code":"CU","region":{"name":"Caribbean","code":"CR"}}},"version":"1bcfe134-720b-422e-950b-71f52c662f36"}}]}]}',{'CUR'},f819fcad-ac78-4c92-9390-f62a2c253f14);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00141','Economy ','{"groups":[{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"cabin_class","fieldValue":{"id":"CL00011","name":"Economy","code":"H","version":"24825aa8-211c-449c-902a-5c807c627924"}}]}]}',{'Economy'},eb52ce14-96ca-45c9-8e18-48199a5dd2f5);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00146','Economy ATH-FRA','{"groups":[{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"cabin_class","fieldValue":{"id":"CL00011","name":"Economy","code":"H","version":"24825aa8-211c-449c-902a-5c807c627924"}}]},{"groupDataId":"where","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"origin_airport","fieldValue":{"name":"Eleftherios Venizelos","code":"ATH","city":{"name":"Athens","code":"ATH","country":{"name":"Greece","code":"GR","region":{"name":"Europe","code":"EU"}}},"version":"e810c3bd-bc70-473c-b90c-dd0795f411ed"}},{"condition":"=","field":"destination_airport","fieldValue":{"name":"Frankfurt Airport","code":"FRA","city":{"name":"Frankfurt","code":"FRA","country":{"name":"Germany","code":"GE","region":{"name":"Europe","code":"EU"}}},"version":"13a0ae81-b844-4a9c-a8bf-a4391a3dab99"}}]}]}',{'ATH','Economy','FRA'},3754c3c1-3fd1-4daa-92fd-bef935b14137);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00136','Inselair_ADTwithCHD','{"groups":[{"groupDataId":"to_whom","operator":"AND","rules":[{"condition":"=","field":"passenger_type_codes","fieldValue":"ADT"},{"condition":"=","field":"traveling_with","fieldValue":"CHD"}],"groupOperator":"AND"}]}',{'ADTwithCHD','Price Optimization'},41a64d6d-fb88-4b69-b8fa-ac399bd9f85b);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00134','FriSun Markup','{"groups":[{"groupDataId":"when","operator":"OR","groupOperator":"AND","rules":[{"condition":"=","field":"departure_day","fieldValue":"friday"},{"condition":"=","field":"departure_day","fieldValue":"sunday"}]}]}',{'Early Morning','Price Optimization'},97bf3604-45ba-4356-995f-534c0175ae64);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00135','CUR-AUA','{"groups":[{"groupDataId":"where","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"origin_airport","fieldValue":{"name":"Curacao","code":"CUR","city":{"name":"Curacao","code":"CU","country":{"name":"Curacao","code":"CU","region":{"name":"Caribbean","code":"CR"}}},"version":"1bcfe134-720b-422e-950b-71f52c662f36"}},{"condition":"=","field":"destination_airport","fieldValue":{"name":"Aruba","code":"AUA","city":{"name":"Aruba","code":"AU","country":{"name":"Aruba","code":"AU","region":{"name":"Caribbean","code":"CR"}}},"version":"645d91de-c568-4d6d-9491-972be1bc47a0"}}]}]}',{'CURAUA','Price Optimization'},2c1a45f2-ced2-4132-947d-7aa69a892c7c);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00132','Exit Row Seats','{"groups":[{"groupDataId":"where","operator":"OR","groupOperator":"AND","rules":[{"condition":"=","field":"seat_row","fieldValue":12},{"condition":"=","field":"seat_row","fieldValue":13}]}]}',null,46ff57ea-b856-45d2-9e4a-f03a25986a78);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00147','ADTwithCHD_Holidays','{"groups":[{"groupDataId":"to_whom","operator":"OR","groupOperator":"AND","rules":[{"condition":"=","field":"passenger_type_codes","fieldValue":"ADT"},{"condition":"=","field":"traveling_with","fieldValue":"CHD"},{"condition":"=","field":"traveling_with","fieldValue":"INF"}]},{"groupDataId":"when","operator":"AND","groupOperator":"AND","rules":[{"condition":">=","field":"departure_date","fieldValue":{"date":{"year":2018,"month":12,"day":15},"jsdate":"2018-12-14T22:00:00.000Z","formatted":"15/12/2018","epoc":1544824800}},{"condition":"=","field":"departure_date","fieldValue":{"date":{"year":2019,"month":1,"day":5},"jsdate":"2019-01-04T22:00:00.000Z","formatted":"05/01/2019","epoc":1546639200}}]}]}',{'ADTwithCHD','Holidays','Price Optimization'},e44531f4-0aee-4f93-bf18-f6594f8862e5);
INSERT INTO rule_set (id,name,rule,tags,version) VALUES ('RS00150','Buy one get one free','{"groups":[{"groupDataId":"to_whom","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"passenger_type_codes","fieldValue":"ADT"}]},{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"OR","rules":[{"condition":"=","field":"reservation_booking_designators","fieldValue":{"id":"RBD00016","code":"K","version":"7bee9565-b617-43f3-ae87-df525149b61a"}},{"condition":"=","field":"fare_basis_code","fieldValue":{"id":"FBC00009","code":"KCN","version":"436313c8-0ec1-47e8-8abc-a083ca7a92cb"}}]},{"groupDataId":"for_wich_fares","operator":"AND","groupOperator":"AND","rules":[{"condition":"=","field":"fare_basis_code","fieldValue":{"id":"FBC00010","code":"KCP","version":"45beac28-86fd-4f91-88e5-fd6b886e2b18"}}]}]}',null,88a17b2e-5b5c-4572-b205-f437b84f41fb);


INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00089','RS00138','PO00028','POS00019',150,'usd','en',0,'3rd baggage','Inselair All Regions','Late Night Discount',true,'RC00033','Third Bag Image','Destination NOT BON','BG','SC10109','Baggage','2','inactive',0,33ea652f-2d82-424b-aec7-6166e3dcd712);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00089','RS00138','PO00029','POS00019',150,'usd','en',0,'3rd baggage','Inselair All Regions','Early Morning Markup',true,'RC00033','Third Bag Image','Destination NOT BON','BG','SC10109','Baggage','2','inactive',0,33ea652f-2d82-424b-aec7-6166e3dcd712);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00097','RS00130','','POS00019',13,'usd','en',0,'Wifi','Inselair All Regions',null,true,'RC00039','WiFi ','Wifi Rule','IC','SC00123','Internet Connection','1','inactive',1,da0c3499-1d25-468b-8e13-6dd21b3db702);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00043','RS00110','PO00022','POS00019',20,'eur','en',0,'Advanced Seat Selection','Inselair All Regions','Seat discount for Y',false,'RC00030','Seat Selection','AUA - CUR 2018','ST','SC00106','Seat',null,'inactive',0,16e191cd-7b74-45d7-a1c8-2fdf5d778be2);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00041','RS00076','PO00012','POS00019',40,'eur','en',0,'Fourth Bag','Inselair All Regions','443 fourth bag discount',false,'RC00029','Baggage','Fourth Bag 443 and 402','BG','SC10109','Baggage','0','inactive',0,38601d41-145d-4cd1-9ef6-f4f4d0ab7981);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00041','RS00076','PO00013','POS00019',40,'eur','en',0,'Fourth Bag','Inselair All Regions','Flight 402 fourth bag discount',false,'RC00029','Baggage','Fourth Bag 443 and 402','BG','SC10109','Baggage','0','inactive',0,38601d41-145d-4cd1-9ef6-f4f4d0ab7981);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00098','RS00133','PO00028','POS00026',40,'usd','en',0,'Lounge Pass - Madrid','Mobile App','Mid-Week Discount except Sat',false,'RC00038','First bag','Mid-Week Discount','LG','SC00040','Lounge','','active',0,0c8b8716-a02a-4802-aee4-73a8fa9c42de);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00088','','PO00030','POS00019',40,'usd','en',0,'Inselair 2nd bag','Inselair All Regions','2nd Baggage Inselair CUR-AUA',true,'RC00036','Second Baggage',null,'BG','SC10109','Baggage','2','active',0,cc2f199e-6e50-4ab3-9935-0c8a6b836b8c);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00088','','PO00034','POS00019',40,'usd','en',0,'Inselair 2nd bag','Inselair All Regions','Inselair 2nd bag ADT with INF -50% 11-28/02',true,'RC00036','Second Baggage',null,'BG','SC10109','Baggage','2','active',0,cc2f199e-6e50-4ab3-9935-0c8a6b836b8c);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00082','RS00132','','POS00021',10,'eur','en',0,'Exit Row Seat Selection','All Regions',null,false,'RC00030','Seat Selection','Exit Row Seats','ST','SC00106','Seat',null,'inactive',0,4a50ac2e-f521-46ea-977f-bb2e35c3517a);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00092','','','POS00019',0,'usd','en',0,'Inselair Free 1st Bag','Inselair All Regions',null,false,'RC00041','Inselair Free Bag',null,'BG','SC10109','Baggage','2','active',0,71d7d263-e3b1-4d0f-bdfd-f554b5cb8438);
INSERT INTO service_by_id (id,service_applicability_id,price_optimization_id,points_of_sale_id,amount,currency,language,miles,name,points_of_sale_name,price_optimization_name,refundable,rich_content_id,rich_content_name,service_applicability_name,service_category_code,service_category_id,service_category_name,settlement,status,tax,version) VALUES ('SVC00047','','PO00031','POS00019',10,'eur','en',0,'Inselair Snack','Inselair All Regions','Family Meal Discount',false,'RC00034','7i Snack',null,'MLS','SC00111','Meal Beverage','2','active',0,6578fc95-c28e-4558-8a8f-e4d74cf2b406);




INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'First Class','A','CL00002',64132d8c-e0a6-47f7-968a-7cd03a17e6d4);
INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'Economy','H','CL00011',24825aa8-211c-449c-902a-5c807c627924);
INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'Economy','L','CL00010',08f2fc56-17ca-423a-bc8e-bd423ad01bc8);
INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'Economy Flexible','Y','CL00009',0ddb020d-93da-47f9-b8ab-521635bc2847);
INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'Premium Economy','F','CL00005',cda0d72e-f880-4eec-84ca-d977027c4d75);
INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'Economy Class','M','CL00004',85a7beb0-16f6-4df8-b566-e1ae05c9f4d6);
INSERT INTO rcms.cabin_class (name,code,cabin_class_id,version) VALUES (
'Business Class','C','CL00003',e9362041-d879-41fe-aa3a-67547627dfcc);

INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'F27M050','F50','F50','EQ00009',a27b5d4b-7358-4e11-bda1-7fc776161777);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'773','773','773','EQ00014',483264ac-76ba-4a53-8890-3d45c7fc6c72);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'772','772','772','EQ00013',490961fe-cf7a-422f-b115-4ac485bca577);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'738','738','738','EQ00011',45f61ef3-7875-4a73-b09e-7c4d84f4d457);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'320','320','320','EQ00010',442f0a94-094a-47a4-9cda-f55ffcd76201);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'A320','212','F20D24M90','EQ00005',e4495605-f654-464a-9fd9-2a76f157f123);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'76P','76P','76P','EQ00012',75d2c5a0-b8c3-48d3-9d67-8d7287c15600);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'78P','78P','78P','EQ00015',eb73912b-7f1f-4194-8530-6d1e7235e82a);
INSERT INTO rcms.equipment (aircraft_type,aircraft_configuration,airline_equipment_code,equipment_id,version) VALUES (
'A320','111','F12C24M90','EQ00004',9959dc82-6d82-4f6f-894c-84828e27da63);

INSERT INTO rcms.fare_basis_code (code,id,version) VALUES (
'ARCNA6','FBC00001',7c821054-2d74-4857-8235-f977e1d4ebea);
INSERT INTO rcms.fare_basis_code (code,id,version) VALUES (
'IRCNA1','FBC00002',a1533721-ff32-4d33-91ff-054397062e98);
INSERT INTO rcms.fare_basis_code (code,id,version) VALUES (
'KCN','FBC00009',436313c8-0ec1-47e8-8abc-a083ca7a92cb);
INSERT INTO rcms.fare_basis_code (code,id,version) VALUES (
'KCP','FBC00010',45beac28-86fd-4f91-88e5-fd6b886e2b18);

INSERT INTO flight_group (id,flight_id,destination,flight_name,name,origin,status,tags,version) VALUES ('FG00012','FL00035','CUR','7I402','Aruba to St Maarten','AUA',null,null,07778bf8-6315-46bf-92cd-4eee897074b8);
INSERT INTO flight_group (id,flight_id,destination,flight_name,name,origin,status,tags,version) VALUES ('FG00012','FL00044','SXM','7I511','Aruba to St Maarten','CUR',null,null,07778bf8-6315-46bf-92cd-4eee897074b8);
INSERT INTO flight_group (id,flight_id,destination,flight_name,name,origin,status,tags,version) VALUES ('FG00013','FL00049','CUR','161','Test FG','AUA',null,{'tag1'},8569fa2b-16f8-4ba0-834f-7d04e3ae8fea);
INSERT INTO flight_group (id,flight_id,destination,flight_name,name,origin,status,tags,version) VALUES ('FG00013','FL00106','HN','NH50','Test FG','CTS',null,{'tag1'},8569fa2b-16f8-4ba0-834f-7d04e3ae8fea);


INSERT INTO languages (code,id) VALUES ('ru','Russian');
INSERT INTO languages (code,id) VALUES ('mt','Maltese');
INSERT INTO languages (code,id) VALUES ('ur','Urdu');
INSERT INTO languages (code,id) VALUES ('bm','Bambara');
INSERT INTO languages (code,id) VALUES ('es','Spanish; Castilian');
INSERT INTO languages (code,id) VALUES ('sd','Sindhi');
INSERT INTO languages (code,id) VALUES ('nb','Norwegian Bokmål');
INSERT INTO languages (code,id) VALUES ('gd','Scottish Gaelic; Gaelic');
INSERT INTO languages (code,id) VALUES ('st','Southern Sotho');
INSERT INTO languages (code,id) VALUES ('ml','Malayalam');
INSERT INTO languages (code,id) VALUES ('ab','Abkhaz');
INSERT INTO languages (code,id) VALUES ('kn','Kannada');
INSERT INTO languages (code,id) VALUES ('ja','Japanese');
INSERT INTO languages (code,id) VALUES ('kg','Kongo');
INSERT INTO languages (code,id) VALUES ('pl','Polish');
INSERT INTO languages (code,id) VALUES ('sg','Sango');
INSERT INTO languages (code,id) VALUES ('io','Ido');
INSERT INTO languages (code,id) VALUES ('sm','Samoan');
INSERT INTO languages (code,id) VALUES ('ia','Interlingua');
INSERT INTO languages (code,id) VALUES ('kv','Komi');
INSERT INTO languages (code,id) VALUES ('ho','Hiri Motu');
INSERT INTO languages (code,id) VALUES ('kr','Kanuri');
INSERT INTO languages (code,id) VALUES ('uz','Uzbek');
INSERT INTO languages (code,id) VALUES ('an','Aragonese');
INSERT INTO languages (code,id) VALUES ('bh','Bihari');
INSERT INTO languages (code,id) VALUES ('mk','Macedonian');
INSERT INTO languages (code,id) VALUES ('tl','Tagalog');
INSERT INTO languages (code,id) VALUES ('cy','Welsh');
INSERT INTO languages (code,id) VALUES ('wa','Walloon');
INSERT INTO languages (code,id) VALUES ('qu','Quechua');
INSERT INTO languages (code,id) VALUES ('is','Icelandic');
INSERT INTO languages (code,id) VALUES ('sq','Albanian');
INSERT INTO languages (code,id) VALUES ('li','Limburgish, Limburgan, Limburger');
INSERT INTO languages (code,id) VALUES ('aa','Afar');
INSERT INTO languages (code,id) VALUES ('to','Tonga (Tonga Islands)');
INSERT INTO languages (code,id) VALUES ('eu','Basque');
INSERT INTO languages (code,id) VALUES ('ee','Ewe');
INSERT INTO languages (code,id) VALUES ('mn','Mongolian');
INSERT INTO languages (code,id) VALUES ('zh','Chinese');
INSERT INTO languages (code,id) VALUES ('ie','Interlingue');
INSERT INTO languages (code,id) VALUES ('pi','Pali');
INSERT INTO languages (code,id) VALUES ('ne','Nepali');
INSERT INTO languages (code,id) VALUES ('os','Ossetian, Ossetic');
INSERT INTO languages (code,id) VALUES ('gn','Guaraní');
INSERT INTO languages (code,id) VALUES ('nl','Dutch');
INSERT INTO languages (code,id) VALUES ('yi','Yiddish');
INSERT INTO languages (code,id) VALUES ('mh','Marshallese');
INSERT INTO languages (code,id) VALUES ('so','Somali');
INSERT INTO languages (code,id) VALUES ('as','Assamese');
INSERT INTO languages (code,id) VALUES ('ay','Aymara');
INSERT INTO languages (code,id) VALUES ('nn','Norwegian Nynorsk');
INSERT INTO languages (code,id) VALUES ('vi','Vietnamese');
INSERT INTO languages (code,id) VALUES ('he','Hebrew (modern)');
INSERT INTO languages (code,id) VALUES ('tr','Turkish');
INSERT INTO languages (code,id) VALUES ('om','Oromo');
INSERT INTO languages (code,id) VALUES ('pt','Portuguese');
INSERT INTO languages (code,id) VALUES ('ce','Chechen');
INSERT INTO languages (code,id) VALUES ('en','English');
INSERT INTO languages (code,id) VALUES ('xh','Xhosa');
INSERT INTO languages (code,id) VALUES ('bs','Bosnian');
INSERT INTO languages (code,id) VALUES ('ti','Tigrinya');
INSERT INTO languages (code,id) VALUES ('sk','Slovak');
INSERT INTO languages (code,id) VALUES ('rm','Romansh');
INSERT INTO languages (code,id) VALUES ('nv','Navajo, Navaho');
INSERT INTO languages (code,id) VALUES ('nd','North Ndebele');
INSERT INTO languages (code,id) VALUES ('ak','Akan');
INSERT INTO languages (code,id) VALUES ('it','Italian');
INSERT INTO languages (code,id) VALUES ('sr','Serbian');
INSERT INTO languages (code,id) VALUES ('am','Amharic');
INSERT INTO languages (code,id) VALUES ('ca','Catalan; Valencian');
INSERT INTO languages (code,id) VALUES ('da','Danish');
INSERT INTO languages (code,id) VALUES ('lv','Latvian');
INSERT INTO languages (code,id) VALUES ('nr','South Ndebele');
INSERT INTO languages (code,id) VALUES ('id','Indonesian');
INSERT INTO languages (code,id) VALUES ('mg','Malagasy');
INSERT INTO languages (code,id) VALUES ('ug','Uighur, Uyghur');
INSERT INTO languages (code,id) VALUES ('de','German');
INSERT INTO languages (code,id) VALUES ('br','Breton');
INSERT INTO languages (code,id) VALUES ('ht','Haitian; Haitian Creole');
INSERT INTO languages (code,id) VALUES ('bi','Bislama');
INSERT INTO languages (code,id) VALUES ('ha','Hausa');
INSERT INTO languages (code,id) VALUES ('co','Corsican');
INSERT INTO languages (code,id) VALUES ('hy','Armenian');
INSERT INTO languages (code,id) VALUES ('ba','Bashkir');
INSERT INTO languages (code,id) VALUES ('hr','Croatian');
INSERT INTO languages (code,id) VALUES ('wo','Wolof');
INSERT INTO languages (code,id) VALUES ('oj','Ojibwe, Ojibwa');
INSERT INTO languages (code,id) VALUES ('be','Belarusian');
INSERT INTO languages (code,id) VALUES ('jv','Javanese');
INSERT INTO languages (code,id) VALUES ('yo','Yoruba');
INSERT INTO languages (code,id) VALUES ('lg','Luganda');
INSERT INTO languages (code,id) VALUES ('oc','Occitan');
INSERT INTO languages (code,id) VALUES ('hz','Herero');
INSERT INTO languages (code,id) VALUES ('tw','Twi');
INSERT INTO languages (code,id) VALUES ('tt','Tatar');
INSERT INTO languages (code,id) VALUES ('ig','Igbo');
INSERT INTO languages (code,id) VALUES ('th','Thai');
INSERT INTO languages (code,id) VALUES ('fo','Faroese');
INSERT INTO languages (code,id) VALUES ('bg','Bulgarian');
INSERT INTO languages (code,id) VALUES ('bn','Bengali');
INSERT INTO languages (code,id) VALUES ('cs','Czech');
INSERT INTO languages (code,id) VALUES ('tn','Tswana');
INSERT INTO languages (code,id) VALUES ('ga','Irish');
INSERT INTO languages (code,id) VALUES ('ro','Romanian, Moldavian, Moldovan');
INSERT INTO languages (code,id) VALUES ('my','Burmese');
INSERT INTO languages (code,id) VALUES ('ta','Tamil');
INSERT INTO languages (code,id) VALUES ('tg','Tajik');
INSERT INTO languages (code,id) VALUES ('na','Nauru');
INSERT INTO languages (code,id) VALUES ('kl','Kalaallisut, Greenlandic');
INSERT INTO languages (code,id) VALUES ('mi','Maori');
INSERT INTO languages (code,id) VALUES ('ii','Nuosu');
INSERT INTO languages (code,id) VALUES ('sc','Sardinian');
INSERT INTO languages (code,id) VALUES ('dv','Divehi; Dhivehi; Maldivian;');
INSERT INTO languages (code,id) VALUES ('fa','Persian');
INSERT INTO languages (code,id) VALUES ('bo','Tibetan Standard, Tibetan, Central');
INSERT INTO languages (code,id) VALUES ('ks','Kashmiri');
INSERT INTO languages (code,id) VALUES ('la','Latin');
INSERT INTO languages (code,id) VALUES ('no','Norwegian');
INSERT INTO languages (code,id) VALUES ('ki','Kikuyu, Gikuyu');
INSERT INTO languages (code,id) VALUES ('za','Zhuang, Chuang');
INSERT INTO languages (code,id) VALUES ('pa','Panjabi, Punjabi');
INSERT INTO languages (code,id) VALUES ('sv','Swedish');
INSERT INTO languages (code,id) VALUES ('fj','Fijian');
INSERT INTO languages (code,id) VALUES ('af','Afrikaans');
INSERT INTO languages (code,id) VALUES ('fy','Western Frisian');
INSERT INTO languages (code,id) VALUES ('ps','Pashto, Pushto');
INSERT INTO languages (code,id) VALUES ('km','Khmer');
INSERT INTO languages (code,id) VALUES ('ff','Fula; Fulah; Pulaar; Pular');
INSERT INTO languages (code,id) VALUES ('kw','Cornish');
INSERT INTO languages (code,id) VALUES ('lt','Lithuanian');
INSERT INTO languages (code,id) VALUES ('cv','Chuvash');
INSERT INTO languages (code,id) VALUES ('tk','Turkmen');
INSERT INTO languages (code,id) VALUES ('or','Oriya');
INSERT INTO languages (code,id) VALUES ('sn','Shona');
INSERT INTO languages (code,id) VALUES ('lb','Luxembourgish, Letzeburgesch');
INSERT INTO languages (code,id) VALUES ('sw','Swahili');
INSERT INTO languages (code,id) VALUES ('fi','Finnish');
INSERT INTO languages (code,id) VALUES ('ku','Kurdish');
INSERT INTO languages (code,id) VALUES ('ik','Inupiaq');
INSERT INTO languages (code,id) VALUES ('hu','Hungarian');
INSERT INTO languages (code,id) VALUES ('ln','Lingala');
INSERT INTO languages (code,id) VALUES ('rw','Kinyarwanda');
INSERT INTO languages (code,id) VALUES ('cu','Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic');
INSERT INTO languages (code,id) VALUES ('sa','Sanskrit (Sa?sk?ta)');
INSERT INTO languages (code,id) VALUES ('gl','Galician');
INSERT INTO languages (code,id) VALUES ('kk','Kazakh');
INSERT INTO languages (code,id) VALUES ('ko','Korean');
INSERT INTO languages (code,id) VALUES ('kj','Kwanyama, Kuanyama');
INSERT INTO languages (code,id) VALUES ('fr','French');
INSERT INTO languages (code,id) VALUES ('az','Azerbaijani');
INSERT INTO languages (code,id) VALUES ('et','Estonian');
INSERT INTO languages (code,id) VALUES ('te','Telugu');
INSERT INTO languages (code,id) VALUES ('hi','Hindi');
INSERT INTO languages (code,id) VALUES ('ae','Avestan');
INSERT INTO languages (code,id) VALUES ('rn','Kirundi');
INSERT INTO languages (code,id) VALUES ('iu','Inuktitut');
INSERT INTO languages (code,id) VALUES ('ts','Tsonga');
INSERT INTO languages (code,id) VALUES ('uk','Ukrainian');
INSERT INTO languages (code,id) VALUES ('mr','Marathi (Mara?hi)');
INSERT INTO languages (code,id) VALUES ('cr','Cree');
INSERT INTO languages (code,id) VALUES ('vo','Volapük');
INSERT INTO languages (code,id) VALUES ('ng','Ndonga');
INSERT INTO languages (code,id) VALUES ('el','Greek, Modern');
INSERT INTO languages (code,id) VALUES ('ny','Chichewa; Chewa; Nyanja');
INSERT INTO languages (code,id) VALUES ('gu','Gujarati');
INSERT INTO languages (code,id) VALUES ('eo','Esperanto');
INSERT INTO languages (code,id) VALUES ('lo','Lao');
INSERT INTO languages (code,id) VALUES ('av','Avaric');
INSERT INTO languages (code,id) VALUES ('ve','Venda');
INSERT INTO languages (code,id) VALUES ('ar','Arabic');
INSERT INTO languages (code,id) VALUES ('su','Sundanese');
INSERT INTO languages (code,id) VALUES ('ky','Kirghiz, Kyrgyz');
INSERT INTO languages (code,id) VALUES ('ss','Swati');
INSERT INTO languages (code,id) VALUES ('se','Northern Sami');
INSERT INTO languages (code,id) VALUES ('ka','Georgian');
INSERT INTO languages (code,id) VALUES ('ms','Malay');
INSERT INTO languages (code,id) VALUES ('ch','Chamorro');
INSERT INTO languages (code,id) VALUES ('lu','Luba-Katanga');
INSERT INTO languages (code,id) VALUES ('ty','Tahitian');
INSERT INTO languages (code,id) VALUES ('gv','Manx');
INSERT INTO languages (code,id) VALUES ('si','Slovene');


INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00030','English','Unknown','MD00094','6','en','<p>Enjoy your flight even more by choosing your favorite seat with a 50% discount when you travel with your children. </p>','Seat Selection','<p>Enjoy your flight even more by choosing your favorite seat with a 50% discount when you travel with your children.</p>','Seat Selection',{'Seats'},'Seat Selection',74a2a74d-9567-47ef-ac5f-5b6834c7c793);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00030','English','Web browser','MD00096','2','en','<p>Enjoy your flight even more by choosing your favorite seat with a 50% discount when you travel with your children. </p>','Seat Selection','<p>Enjoy your flight even more by choosing your favorite seat with a 50% discount when you travel with your children.</p>','Seat Selection',{'Seats'},'Seat Selection',74a2a74d-9567-47ef-ac5f-5b6834c7c793);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00029','English','Unknown','MD00011','6','en','<p>Get a piece of baggage with you.</p>','Baggage','<p>Get a piece of baggage with you up to 23Kg</p>','Baggage',null,'Baggage',0e879904-ffdb-4971-982e-e4e09937b3d1);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00038','English','Unknown','MD00087','6','en','<p><span style="color: rgb(51, 51, 51);">Passengers have the option to pre-purchase first checked baggage at specific rates.</span></p>','First bag','<p><span style="color: rgb(51, 51, 51);">Passengers have the option to pre-purchase first checked baggage at specific rates.</span></p>','First bag',null,'First bag',f26ab3d1-e0fd-407e-93ac-83492a91f35c);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00038','English','Web browser','MD00091','2','en','<p><span style="color: rgb(51, 51, 51);">Passengers have the option to pre-purchase first checked baggage at specific rates.</span></p>','First bag','<p><span style="color: rgb(51, 51, 51);">Passengers have the option to pre-purchase first checked baggage at specific rates.</span></p>','First bag ',null,'First bag',f26ab3d1-e0fd-407e-93ac-83492a91f35c);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00037','English','Unknown','MD00085','6','en','<p>Cayman Islands Boat Rentals is the only company who offers you the flexibility to rent Jet Ski’s at your leisure so that you can explore the beauty of the Cayman Islands by water on your own personal watercraft. Whether you want to zip along Seven Mile Beach or experience the popular sites within the North Sound. You can also rent for multiple days – or get a private guide to take you on your own safari trip.</p><p>Visiting Stingray City by Jet Ski is one of our most popular excursions. You can take your time and won’t have to worry about being on a busy tour boat. The Kaibo Marina or Rum Point are both just minutes away and offer great options for lunch while gazing out into the Caribbean Sea.</p>','Jet Ski','<p>Cayman Islands Boat Rentals is the only company who offers you the flexibility to rent Jet Ski’s at your leisure so that you can explore the beauty of the Cayman Islands by water on your own personal watercraft. Whether you want to zip along Seven Mile Beach or experience the popular sites within the North Sound. You can also rent for multiple days – or get a private guide to take you on your own safari trip.</p><p>Visiting Stingray City by Jet Ski is one of our most popular excursions. You can take your time and won’t have to worry about being on a busy tour boat. The Kaibo Marina or Rum Point are both just minutes away and offer great options for lunch while gazing out into the Caribbean Sea.</p>','jetski',{'jetski'},'jetski',7ef8bf0b-157d-459a-acc5-3bf9c8a496ea);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00036','English','Unknown','MD00089','6','en','<p>Get a Second piece of baggage with you.</p><p><br></p><p>Baggage maximum weight 20kg</p>','Second Baggage','<p>Get a second piece of baggage with you.</p><p><br></p><p>Baggage maximum weight 20kg</p>','Third Baggage',null,'Third Additional Baggage',41ad8ea5-be3d-4a76-a0a6-49ed877d05ba);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00041','English','Unknown','MD00087','6','en','<p>You can carry one bag per person up to 23 kg for free.</p>','Inselair Free Bag','<p>You can carry one bag per person up to 23 kg for free.</p>','Free Bag',{'1st Bag','All Regions'},'Free Bag',0a1abd49-6663-49e5-8007-afa239308733);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00041','English','Web browser','MD00087','2','en','<p>You can carry one bag per person up to 23 kg for free.</p>','Inselair Free Bag','<p>You can carry one bag per person up to 23 kg for free.</p>','Free Bag',{'1st Bag','All Regions'},'Free Bag',0a1abd49-6663-49e5-8007-afa239308733);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00018','Abkhaz','Unknown','MD00004','6','ab','<p><span style="color: rgb(255, 255, 0); background-color: rgb(107, 36, 178);">Pets 1</span></p>','Pets','<p>Pets</p>','Pets',{'Pets'},'Pets 1',697a7cc2-c96d-412f-8eea-24aade629461);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00018','Abkhaz','Unknown','MD00008','6','ab','<p><span style="color: rgb(255, 255, 0); background-color: rgb(107, 36, 178);">Pets 1</span></p>','Pets','<p>Pets</p>','Pets',{'Pets'},'Pets 1',697a7cc2-c96d-412f-8eea-24aade629461);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00018','English','Airport kiosk','MD00004','3','en','<p>Pets</p>','Pets','<p>Pets</p>','Pets',{'Pets'},'Pets',697a7cc2-c96d-412f-8eea-24aade629461);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00018','English','Unknown','MD00002','6','en','<p>Pets</p>','Pets','<p>sdfsdf</p>','dfs',{'Pets'},'Pets',697a7cc2-c96d-412f-8eea-24aade629461);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00018','English','Unknown','MD00008','6','en','<p>Pets</p>','Pets','<p>Pets</p>','Pets',{'Pets'},'Pets',697a7cc2-c96d-412f-8eea-24aade629461);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00040','English','Mobile device','MD00088','4','en','<p>For those travelling on holidays in Europe, and especially for the time period 10/12/18 - 05/01/19, Royal Air Maroc is offering your 2nd bag for free.</p>','2ndBag_Holidays','<p>If you are traveling during 10/12/18 - 05/01/19 in Europe, Royal Air Maroc is offering your 2nd bag for free.</p>','2nd Baggage',{'2nd Bag','Holidays','RAM'},'2nd Baggage',ee6a1a41-99ee-4383-aab4-73343224594d);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00040','English','Unknown','MD00088','6','en','<p>For those travelling on holidays in Europe, and especially for the time period 10/12/18 - 05/01/19, Royal Air Maroc is offering your 2nd bag for free.</p>','2ndBag_Holidays','<p>If you are traveling during 10/12/18 - 05/01/19 in Europe, Royal Air Maroc is offering your 2nd bag for free.</p>','2nd Baggage',{'2nd Bag','Holidays','RAM'},'2nd Baggage',ee6a1a41-99ee-4383-aab4-73343224594d);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00040','English','Web browser','MD00091','2','en','<p>For those travelling on holidays in Europe, and especially for the time period 10/12/18 - 05/01/19, Royal Air Maroc is offering your 2nd bag for free.</p>','2ndBag_Holidays','<p>If you are traveling during 10/12/18 - 05/01/19 in Europe, Royal Air Maroc is offering your 2nd bag for free.</p>','2nd Baggage',{'2nd Bag','Holidays','RAM'},'2nd Baggage',ee6a1a41-99ee-4383-aab4-73343224594d);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00042','English','Unknown','MD00096','6','en','<p>For those travelling with children on holidays from Aruba to Curacao, and especially for the time period 10/12/18 - 05/01/19, we is offering your 2nd bag for free.</p>','Inselair 2nd Bag AUA-CUR - Holidays','<p>For those travelling with children on holidays from Aruba to Curacao, and especially for the time period 10/12/18 - 05/01/19, we is offering your 2nd bag for free.</p>','2nd Bag',{'AUA','CUR','Family','Holidays'},'2nd Bag for Holidays',7ced96ae-346a-4bb6-9105-012060fb6aec);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00042','English','Web browser','MD00095','2','en','<p>For those travelling with children on holidays from Aruba to Curacao, and especially for the time period 10/12/18 - 05/01/19, we is offering your 2nd bag for free.</p>','Inselair 2nd Bag AUA-CUR - Holidays','<p>For those travelling with children on holidays from Aruba to Curacao, and especially for the time period 10/12/18 - 05/01/19, we is offering your 2nd bag for free.</p>','2nd Bag',{'AUA','CUR','Family','Holidays'},'2nd Bag for Holidays',7ced96ae-346a-4bb6-9105-012060fb6aec);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00033','English','Unknown','MD00086','6','en','<p>A third extra piece can be carried but please note that the maximum allowance is 3 bags per person including the free allowance.</p>','Third Baggage','<p>A third extra piece can be carried but please note that the maximum allowance is 3 bags per person including the free allowance.</p>','Third baggage',null,'Third baggage',0e982d86-2714-4c5d-840b-b06f618fed68);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00034','English','Unknown','MD00081','6','en','<p>An individually packed sweet or savory snack or sandwich is served with our compliments.</p><p><em>Changes may be made without notice in the event of unforeseen circumstances.</em></p>','7i Snack','<p>An individually packed sweet or savory snack or sandwich is served with our compliments.</p><p><em>Changes may be made without notice in the event of unforeseen circumstances.</em></p>','Snack',null,'Snack',e0d0a24b-2980-4278-b241-f9059160018b);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00032','English','Unknown','MD00010','6','en','<p>Select a gluten free inflight meal.</p>','Gluten free meal','<p>Select a gluten free inflight meal.</p>','Gluten free meal',null,'Gluten free meal',a7d76fa6-2536-4e49-8a70-e59a44e7f12f);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00026','English','Mobile device','MD00092','4','en','<p>As part of the “Discover Greek Cuisine” programme, Aegean is giving its passengers the opportunity to enjoy a meal inspired by traditional recipes from the islands of Greece.</p><p><br></p><p>All passengers on international flights will have the chance to enjoy a meal from the Greek cuisine and Business Class passengers will be offered a choice of two hot meals. Business class passengers on domestic flights can enjoy a cold meal.</p><p><br></p><p>The menu includes special creations by chef Nikos Sarantos inspired by Greek traditional recipes, based on pure quality ingredients, ensuring a healthy and balanced diet. Mr.Sarantos has served as chairman of the Greek Chef''s Club and of Eurotoque.</p>','Mediterranean Meal - ATH','<p>Dishes that draw inspiration from many island regions of this country play the lead in the new menu.</p><p>The menu is focused mostly on vegetables and salads – many of which include pulses, that are very popular in Greek cuisine, such as rice with lentils and fava – but also on fish, which is a hallmark of Greece’s gastronomic tradition. At the same time, some light meat recipes with lots of Greek herbs, which can transform and enhance even the simplest dish, are included.</p><p>As for desserts, the new menu features a combination of traditional Greek sweets, such as walnut pie, sweet whey cheese pie with marinated fresh season fruit, or delicious strained Greek yoghurt with fruit preserves.</p>','Discover Greek Cuisine',{'Athens Int. Airport','Flight 511','RAM'},'Discover Greek Cuisine',f622065e-a78c-498b-8f46-ce46a3e5b529);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00026','English','Unknown','MD00093','6','en','<p>As part of the “Discover Greek Cuisine” programme, Aegean is giving its passengers the opportunity to enjoy a meal inspired by traditional recipes from the islands of Greece.</p><p><br></p><p>All passengers on international flights will have the chance to enjoy a meal from the Greek cuisine and Business Class passengers will be offered a choice of two hot meals. Business class passengers on domestic flights can enjoy a cold meal.</p><p><br></p><p>The menu includes special creations by chef Nikos Sarantos inspired by Greek traditional recipes, based on pure quality ingredients, ensuring a healthy and balanced diet. Mr.Sarantos has served as chairman of the Greek Chef''s Club and of Eurotoque.</p>','Mediterranean Meal - ATH','<p>Dishes that draw inspiration from many island regions of this country play the lead in the new menu.</p><p>The menu is focused mostly on vegetables and salads – many of which include pulses, that are very popular in Greek cuisine, such as rice with lentils and fava – but also on fish, which is a hallmark of Greece’s gastronomic tradition. At the same time, some light meat recipes with lots of Greek herbs, which can transform and enhance even the simplest dish, are included.</p><p>As for desserts, the new menu features a combination of traditional Greek sweets, such as walnut pie, sweet whey cheese pie with marinated fresh season fruit, or delicious strained Greek yoghurt with fruit preserves.</p>','Discover Greek Cuisine',{'Athens Int. Airport','Flight 511','RAM'},'Discover Greek Cuisine',f622065e-a78c-498b-8f46-ce46a3e5b529);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00026','English','Web browser','MD00093','2','en','<p>As part of the “Discover Greek Cuisine” programme, Aegean is giving its passengers the opportunity to enjoy a meal inspired by traditional recipes from the islands of Greece.</p><p><br></p><p>All passengers on international flights will have the chance to enjoy a meal from the Greek cuisine and Business Class passengers will be offered a choice of two hot meals. Business class passengers on domestic flights can enjoy a cold meal.</p><p><br></p><p>The menu includes special creations by chef Nikos Sarantos inspired by Greek traditional recipes, based on pure quality ingredients, ensuring a healthy and balanced diet. Mr.Sarantos has served as chairman of the Greek Chef''s Club and of Eurotoque.</p>','Mediterranean Meal - ATH','<p>Dishes that draw inspiration from many island regions of this country play the lead in the new menu.</p><p><br></p><p>The menu is focused mostly on vegetables and salads – many of which include pulses, that are very popular in Greek cuisine, such as rice with lentils and fava – but also on fish, which is a hallmark of Greece’s gastronomic tradition. At the same time, some light meat recipes with lots of Greek herbs, which can transform and enhance even the simplest dish, are included.</p><p><br></p><p>As for desserts, the new menu features a combination of traditional Greek sweets, such as walnut pie, sweet whey cheese pie with marinated fresh season fruit, or delicious strained Greek yoghurt with fruit preserves.</p>','Discover Greek Cuisine',{'Athens Int. Airport','Flight 511','RAM'},'Discover Greek Cuisine',f622065e-a78c-498b-8f46-ce46a3e5b529);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00028','English','Unknown','MD00011','6','en','<p>All passengers can carry 1 piece of baggage for free.</p><p>Maximum weight can be 23kg and the total dimensions less than 158cm.</p>','Free Baggage','<p>All passengers can carry 1 piece of baggage for free.</p><p>Maximum weight can be 23kg and the total dimensions less than 158cm.</p>','Free Baggage',null,'Free Baggage',cd27e207-6d89-4f76-a0b0-ff39b9a0a84b);
INSERT INTO rich_content_by_id (id,language_id,device_id,rich_media_id,device_code,language_code,language_description,name,rich_media_description,rich_media_title,tags,title,version) VALUES ('RC00031','English','Unknown','MD00002','6','en','<p>Select a vegan inflight meal.</p>','Vegan Meal','<p>Select a vegan inflight meal.</p>','Vegan meal',null,'Vegan Meal',8ea12ead-5848-4237-8d20-6a0a65ffef42);

