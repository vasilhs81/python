CREATE KEYSPACE ndc_core WITH REPLICATION = { 'class' : 'org.apache.cassandra.locator.SimpleStrategy', 'replication_factor': '2' } AND DURABLE_WRITES = true;

CREATE TABLE ndc_core.payments_history (
    order_id text,
    created_on timestamp,
    uuid text,
    amount decimal,
    credit_card text,
    currency_code text,
    loyalty_redemption frozen<tuple<text, float>>,
    method text,
    offer_item_service_ids set<text>,
    order_item_service_ids set<text>,
    passengers_ids set<text>,
    payer_id text,
    payer_name text,
    payer_surname text,
    ticket_number text,
    PRIMARY KEY (order_id, created_on, uuid)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders_by_flight_segment_new (
    sender_id text,
    number_date frozen<tuple<text, text, timestamp>>,
    order_id text,
    arrival_airport text,
    arrival_date date,
    arrival_time time,
    booking_ref set<text>,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    departure_time time,
    last_arr_airport text,
    last_arr_date date,
    last_arr_time time,
    last_dep_airport text,
    last_dep_date date,
    last_dep_time time,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    PRIMARY KEY ((sender_id, number_date), order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.segment_of_order (
    order_id text,
    segment_refs set<frozen<tuple<text, date>>>,
    PRIMARY KEY (order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.in_value (
    invid text,
    base_amount decimal,
    currency_code text,
    passenger_refs set<text>,
    segment_refs set<frozen<tuple<text, date>>>,
    tax_amount decimal,
    tax_breakdown text,
    tax_collection_ind boolean,
    tax_description text,
    tax_designator text,
    tax_refund_ind boolean,
    total_amount decimal,
    PRIMARY KEY (invid)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.flight_segment_new (
    number_date frozen<tuple<text, text, timestamp>>,
    arrival_code text,
    arrival_date date,
    arrival_name text,
    arrival_terminal text,
    arrival_time time,
    departure_code text,
    departure_name text,
    departure_terminal text,
    departure_time time,
    equipment text,
    flight_duration int,
    marketing_id text,
    marketing_name text,
    operating_id text,
    operating_name text,
    operating_number text,
    PRIMARY KEY (number_date)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_history (
    order_id text,
    changed_on timestamp,
    order_item_id text,
    a_la_carte_indicator boolean,
    base_amount decimal,
    booking_ref set<text> static,
    currency_code text static,
    order_item_owner text,
    order_item_owner_type text,
    order_item_status text,
    order_owner text static,
    order_owner_type text static,
    tax_amount decimal,
    tax_breakdown text,
    tax_collection_ind boolean,
    tax_description text,
    tax_designator text,
    tax_refund_ind boolean,
    total_amount decimal,
    total_price_of_order decimal static,
    PRIMARY KEY (order_id, changed_on, order_item_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.payments (
    order_id text,
    uuid text,
    amount decimal,
    created_on timestamp,
    credit_card text,
    currency_code text,
    loyalty_redemption frozen<tuple<text, float>>,
    method text,
    offer_item_service_ids set<text>,
    order_item_service_ids set<text>,
    passengers_ids set<text>,
    payer_id text,
    payer_name text,
    payer_surname text,
    ticket_number text,
    PRIMARY KEY (order_id, uuid)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_sale_information_notification (
    shopping_response_id text,
    created_on timestamp,
    xml text,
    PRIMARY KEY (shopping_response_id, created_on)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_history (
    order_id text,
    order_item_id text,
    changed_on timestamp,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, date>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    order_item_status text static,
    owner text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, date>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY ((order_id, order_item_id), changed_on, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.service_definitions (
    service_definition_id text,
    owner text,
    description text,
    name text,
    seat_characteristics set<text>,
    type text,
    PRIMARY KEY (service_definition_id, owner)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.passengers_of_order (
    order_id text,
    passenger_refs set<text>,
    PRIMARY KEY (order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.service_definition_of_order (
    order_id text,
    service_definition_refs set<text>,
    PRIMARY KEY (order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_one_order_fl_new (
    flight_date date,
    flight_number text,
    origin_airport text,
    destination_airport text,
    order_id text,
    order_item_id text,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, text, timestamp>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    internal_value_id text,
    order_item_status text static,
    owner text,
    owner_name text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, text, timestamp>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY (flight_date, flight_number, origin_airport, destination_airport, order_id, order_item_id, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_one_order_fl (
    flight_date date,
    flight_number text,
    origin_airport text,
    destination_airport text,
    order_id text,
    order_item_id text,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, date>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    internal_value_id text,
    order_item_status text static,
    owner text,
    owner_name text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, date>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY (flight_date, flight_number, origin_airport, destination_airport, order_id, order_item_id, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders_by_profile_id (
    sender_id text,
    passenger_id text,
    order_id text,
    arrival_airport text,
    arrival_date date,
    booking_ref set<text>,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    PRIMARY KEY ((sender_id, passenger_id), order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_passenger_list (
    order_id text,
    passenger_ref text,
    seq_num int,
    payer_ind boolean,
    primary_ind boolean,
    PRIMARY KEY (order_id, passenger_ref, seq_num)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders_history (
    order_id text,
    changed_on timestamp,
    sender_id text,
    action_type text,
    arrival_airport text,
    arrival_date date,
    booking_ref set<text>,
    changed_by text,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    transaction_type text,
    PRIMARY KEY (order_id, changed_on, sender_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.passengers_shopping_rs (
    response_id text,
    pax_id text,
    ptc text,
    PRIMARY KEY (response_id, pax_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_history_new (
    order_id text,
    order_item_id text,
    changed_on timestamp,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, text, timestamp>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    order_item_status text static,
    owner text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, text, timestamp>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY ((order_id, order_item_id), changed_on, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.offer_item_service_v2 (
    response_id text,
    offer_item_id text,
    service_id text,
    a_la_carte_indicator boolean static,
    base_amount decimal static,
    currency_code text static,
    delete_order_items_ids set<text> static,
    flight_indicator boolean,
    interline_offers set<frozen<tuple<text, text>>>,
    mandatory boolean static,
    offer_id text static,
    offer_owner text static,
    owner_type text static,
    passenger_refs set<text>,
    price_class_refs set<frozen<tuple<text, text, text, timestamp>>> static,
    seats set<frozen<tuple<smallint, ascii>>>,
    segment_refs list<frozen<list<frozen<tuple<text, text, text, timestamp>>>>>,
    service_definition_ref text,
    status text static,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    time_limit timestamp static,
    total_amount decimal static,
    PRIMARY KEY ((response_id, offer_item_id), service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW ndc_core.offer_item_service_by_response_id_mv AS SELECT response_id, offer_item_id, service_id FROM ndc_core.offer_item_service_v2 WHERE response_id IS NOT NULL AND offer_item_id IS NOT NULL AND service_id IS NOT NULL PRIMARY KEY (response_id, offer_item_id, service_id) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.service_by_flight_number_new (
    number_date frozen<tuple<text, text, timestamp>>,
    service_definition_type text,
    service_id text,
    arrival_code text,
    arrival_date date,
    arrival_name text,
    arrival_terminal text,
    arrival_time time,
    createdon timestamp,
    departure_code text,
    departure_name text,
    departure_terminal text,
    departure_time time,
    equipment text,
    flight_duration int,
    flight_indicator boolean,
    marketing_id text,
    marketing_name text,
    offer_valid_date_end timestamp,
    offer_valid_date_start timestamp,
    operating_id text,
    operating_name text,
    operating_number text,
    order_id text,
    orderitem_id text,
    partner_id text,
    passenger_id text,
    provider text,
    service_definition_id text,
    service_definition_name text,
    service_definition_owner text,
    service_internal_value float,
    service_settlement_method text,
    service_settlement_value float,
    service_status text,
    PRIMARY KEY (number_date, service_definition_type, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.service_by_service_definition_type_new (
    order_id text,
    service_definition_type text,
    service_id text,
    arrival_code text,
    arrival_date date,
    arrival_name text,
    arrival_terminal text,
    arrival_time time,
    createdon timestamp,
    departure_code text,
    departure_name text,
    departure_terminal text,
    departure_time time,
    equipment text,
    flight_duration int,
    flight_indicator boolean,
    marketing_id text,
    marketing_name text,
    number_date frozen<tuple<text, text, timestamp>>,
    offer_valid_date_end timestamp,
    offer_valid_date_start timestamp,
    operating_id text,
    operating_name text,
    operating_number text,
    orderitem_id text,
    partner_id text,
    passenger_id text,
    provider text,
    service_definition_id text,
    service_definition_name text,
    service_definition_owner text,
    service_internal_value float,
    service_settlement_method text,
    service_settlement_value float,
    service_status text,
    PRIMARY KEY (order_id, service_definition_type, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_new (
    order_id text,
    order_item_id text,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, text, timestamp>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    internal_value_id text,
    order_item_status text static,
    owner text,
    owner_name text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, text, timestamp>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY ((order_id, order_item_id), service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_one_order (
    flight_date date,
    origin_airport text,
    destination_airport text,
    order_id text,
    order_item_id text,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, date>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    internal_value_id text,
    order_item_status text static,
    owner text,
    owner_name text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, date>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY (flight_date, origin_airport, destination_airport, order_id, order_item_id, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.total_messages_startistics (
    message_type text,
    year int,
    month int,
    created_on timestamp,
    transaction_id text,
    created_on_of_rs timestamp,
    passengers int,
    tickets_emds int,
    total_amount float,
    PRIMARY KEY ((message_type, year, month), created_on, transaction_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders_by_participant (
    sender_id text,
    participant_id text,
    order_id text,
    arrival_airport text,
    arrival_date date,
    arrival_time time,
    booking_ref set<text>,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    departure_time time,
    last_arr_airport text,
    last_arr_date date,
    last_arr_time time,
    last_dep_airport text,
    last_dep_date date,
    last_dep_time time,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    PRIMARY KEY ((sender_id, participant_id), order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders_by_passenger (
    sender_id text,
    passenger_id text,
    order_id text,
    arrival_airport text,
    arrival_date date,
    arrival_time time,
    booking_ref set<text>,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    departure_time time,
    last_arr_airport text,
    last_arr_date date,
    last_arr_time time,
    last_dep_airport text,
    last_dep_date date,
    last_dep_time time,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    PRIMARY KEY ((sender_id, passenger_id), order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.ticket_doc_info (
    order_id text,
    ticket_nbr text,
    coupon_number text,
    base_amount decimal,
    booking_agent text,
    booking_agent_type text,
    cpn_farebasiscode text,
    cpn_inconnection_cpnnbr text,
    cpn_inconnection_docnbr text,
    cpn_monetary_value float,
    cpn_rfic text,
    cpn_rfisc text,
    cpn_sequence int,
    cpn_service_refs set<text>,
    cpn_status text,
    currency_code text,
    datetime_of_issue timestamp,
    issuing_airline_acode text,
    issuing_airline_code text,
    issuing_place text,
    number_of_booklets int,
    passenger_name text,
    passenger_ref text,
    remark text,
    reporting_type text,
    routing_di_code text,
    tax_amount decimal,
    tax_breakdown text,
    tax_collection_ind boolean,
    tax_description text,
    tax_designator text,
    tax_refund_ind boolean,
    ticket_type text,
    total_amount decimal,
    PRIMARY KEY (order_id, ticket_nbr, coupon_number)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item (
    order_id text,
    order_item_id text,
    a_la_carte_indicator boolean,
    base_amount decimal,
    booking_ref set<text> static,
    currency_code text static,
    order_item_owner text,
    order_item_owner_type text,
    order_item_status text,
    order_owner text static,
    order_owner_type text static,
    tax_amount decimal,
    tax_breakdown text,
    tax_collection_ind boolean,
    tax_description text,
    tax_designator text,
    tax_refund_ind boolean,
    total_amount decimal,
    total_price_of_order decimal static,
    PRIMARY KEY (order_id, order_item_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.ndcgatewaylog (
    transactionid text,
    messageid int,
    rqyyyy int,
    rqmm int,
    rqdd int,
    rqhhmmssns bigint,
    originator_timestamp timestamp,
    rqtimestamp timestamp,
    rqxml text,
    rshhmmssns bigint,
    rstimestamp timestamp,
    rsxml text,
    schemaversion text,
    PRIMARY KEY ((transactionid, messageid), rqyyyy, rqmm, rqdd, rqhhmmssns)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.flight_segment (
    number_date frozen<tuple<text, date>>,
    arrival_code text,
    arrival_date date,
    arrival_name text,
    arrival_terminal text,
    arrival_time time,
    departure_code text,
    departure_name text,
    departure_terminal text,
    departure_time time,
    equipment text,
    flight_duration int,
    marketing_id text,
    marketing_name text,
    operating_id text,
    operating_name text,
    operating_number text,
    PRIMARY KEY (number_date)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.order_item_service_one_order_new (
    flight_date date,
    origin_airport text,
    destination_airport text,
    order_id text,
    order_item_id text,
    service_id text,
    a_la_carte_indicator boolean static,
    all_seg_package_indicator boolean,
    applicable_flights list<frozen<list<frozen<tuple<text, text, timestamp>>>>> static,
    base_amount decimal static,
    currency_code text static,
    flight_indicator boolean,
    interline_orders set<frozen<tuple<text, text>>>,
    internal_value_id text,
    order_item_status text static,
    owner text,
    owner_name text,
    owner_type text,
    passenger_ref text,
    price_class_ref text,
    seat frozen<tuple<smallint, ascii>>,
    segment_refs list<frozen<list<frozen<tuple<text, text, timestamp>>>>>,
    service_definition_ref text,
    service_status text,
    tax_amount decimal static,
    tax_breakdown text static,
    tax_collection_ind boolean static,
    tax_description text static,
    tax_designator text static,
    tax_refund_ind boolean static,
    total_amount decimal static,
    PRIMARY KEY (flight_date, origin_airport, destination_airport, order_id, order_item_id, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders (
    order_id text,
    sender_id text,
    arrival_airport text,
    arrival_date date,
    arrival_time time,
    booking_ref set<text>,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    departure_time time,
    last_arr_airport text,
    last_arr_date date,
    last_arr_time time,
    last_dep_airport text,
    last_dep_date date,
    last_dep_time time,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    PRIMARY KEY (order_id, sender_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW ndc_core.orders_by_creation_date AS SELECT sender_id, createdon, order_id, arrival_airport, arrival_date, arrival_time, booking_ref, currency_code, departure_airport, departure_date, departure_time, last_arr_airport, last_arr_date, last_arr_time, last_dep_airport, last_dep_date, last_dep_time, order_item_ids, order_owner, order_owner_type, order_status, passengers_surnames, total_price_of_order FROM ndc_core.orders WHERE sender_id IS NOT NULL AND createdon IS NOT NULL AND order_id IS NOT NULL PRIMARY KEY (sender_id, createdon, order_id) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW ndc_core.orders_by_departure_date AS SELECT sender_id, departure_date, order_id, arrival_airport, arrival_date, arrival_time, booking_ref, createdon, currency_code, departure_airport, departure_time, last_arr_airport, last_arr_date, last_arr_time, last_dep_airport, last_dep_date, last_dep_time, order_item_ids, order_owner, order_owner_type, order_status, passengers_surnames, total_price_of_order FROM ndc_core.orders WHERE sender_id IS NOT NULL AND departure_date IS NOT NULL AND order_id IS NOT NULL PRIMARY KEY (sender_id, departure_date, order_id) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW ndc_core.orders_by_airline AS SELECT sender_id, order_owner, order_id, arrival_airport, arrival_date, arrival_time, booking_ref, createdon, currency_code, departure_airport, departure_date, departure_time, last_arr_airport, last_arr_date, last_arr_time, last_dep_airport, last_dep_date, last_dep_time, order_item_ids, order_owner_type, order_status, passengers_surnames, total_price_of_order FROM ndc_core.orders WHERE sender_id IS NOT NULL AND order_owner IS NOT NULL AND order_id IS NOT NULL PRIMARY KEY (sender_id, order_owner, order_id) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.orders_by_flight_segment (
    sender_id text,
    number_date frozen<tuple<text, date>>,
    order_id text,
    arrival_airport text,
    arrival_date date,
    arrival_time time,
    booking_ref set<text>,
    createdon timestamp,
    currency_code text,
    departure_airport text,
    departure_date date,
    departure_time time,
    last_arr_airport text,
    last_arr_date date,
    last_arr_time time,
    last_dep_airport text,
    last_dep_date date,
    last_dep_time time,
    order_item_ids set<text>,
    order_owner text,
    order_owner_type text,
    order_status text,
    passengers_surnames set<text>,
    total_price_of_order decimal,
    PRIMARY KEY ((sender_id, number_date), order_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.log_errors_per_code (
    year int,
    month int,
    error_code text,
    created_on timestamp,
    echotoken text,
    PRIMARY KEY ((year, month, error_code), created_on, echotoken)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW ndc_core.log_errors_all_codes_mv AS SELECT year, month, created_on, error_code, echotoken FROM ndc_core.log_errors_per_code WHERE year IS NOT NULL AND month IS NOT NULL AND created_on IS NOT NULL AND error_code IS NOT NULL AND echotoken IS NOT NULL PRIMARY KEY ((year, month), created_on, error_code, echotoken) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.price_class (
    price_class_id text,
    cabin_class text,
    cabin_code text,
    class_code text,
    class_name text,
    fare_basis text,
    fare_class text,
    PRIMARY KEY (price_class_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.service_by_flight_number (
    number_date frozen<tuple<text, date>>,
    service_definition_type text,
    service_id text,
    arrival_code text,
    arrival_date date,
    arrival_name text,
    arrival_terminal text,
    arrival_time time,
    createdon timestamp,
    departure_code text,
    departure_name text,
    departure_terminal text,
    departure_time time,
    equipment text,
    flight_duration int,
    flight_indicator boolean,
    marketing_id text,
    marketing_name text,
    offer_valid_date_end timestamp,
    offer_valid_date_start timestamp,
    operating_id text,
    operating_name text,
    operating_number text,
    order_id text,
    orderitem_id text,
    partner_id text,
    passenger_id text,
    provider text,
    service_definition_id text,
    service_definition_name text,
    service_definition_owner text,
    service_internal_value float,
    service_settlement_method text,
    service_settlement_value float,
    service_status text,
    PRIMARY KEY (number_date, service_definition_type, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.service_by_service_definition_type (
    order_id text,
    service_definition_type text,
    service_id text,
    arrival_code text,
    arrival_date date,
    arrival_name text,
    arrival_terminal text,
    arrival_time time,
    createdon timestamp,
    departure_code text,
    departure_name text,
    departure_terminal text,
    departure_time time,
    equipment text,
    flight_duration int,
    flight_indicator boolean,
    marketing_id text,
    marketing_name text,
    number_date frozen<tuple<text, date>>,
    offer_valid_date_end timestamp,
    offer_valid_date_start timestamp,
    operating_id text,
    operating_name text,
    operating_number text,
    orderitem_id text,
    partner_id text,
    passenger_id text,
    provider text,
    service_definition_id text,
    service_definition_name text,
    service_definition_owner text,
    service_internal_value float,
    service_settlement_method text,
    service_settlement_value float,
    service_status text,
    PRIMARY KEY (order_id, service_definition_type, service_id)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;

CREATE TABLE ndc_core.booking_refs (
    booking_ref text,
    order_id text,
    order_owner text,
    sender_id text,
    PRIMARY KEY (booking_ref)
) WITH read_repair_chance = 0.0
   AND dclocal_read_repair_chance = 0.1
   AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01
   AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = ''
   AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 }
   AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0
   AND speculative_retry = '99PERCENTILE'
   AND min_index_interval = 128
   AND max_index_interval = 2048
   AND crc_check_chance = 1.0;
