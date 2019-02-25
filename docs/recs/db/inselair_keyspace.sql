CREATE KEYSPACE inselair WITH REPLICATION = { 'class' : 'org.apache.cassandra.locator.SimpleStrategy', 'replication_factor': '1' } AND DURABLE_WRITES = true;

CREATE TABLE inselair.time_log (
    transaction_id text,
    component_name text,
    action_name text,
    duration bigint,
    in_timestamp timestamp,
    message_name text,
    out_timestamp timestamp,
    sequence_number int,
    PRIMARY KEY (transaction_id, component_name, action_name)
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

CREATE TABLE inselair.pss_cache (
    pss text,
    request text,
    response text,
    PRIMARY KEY (pss, request)
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

CREATE TABLE inselair.pss_message_hits (
    pss text,
    pss_message text,
    cache_hits counter,
    pss_hits counter,
    PRIMARY KEY (pss, pss_message)
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

CREATE TABLE inselair.total_messages_stats (
    message_type int,
    year int,
    month int,
    sender text,
    created_on timestamp,
    transaction_id text,
    created_on_rs timestamp,
    destination text,
    duration int,
    origin text,
    total_amount decimal,
    total_passengers int,
    total_tickets_emds int,
    trip_type int,
    PRIMARY KEY ((message_type, year, month, sender), created_on, transaction_id)
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

CREATE TABLE inselair.sita_mock (
    transactionid text,
    message_type text,
    cache boolean,
    durationms bigint,
    is_error boolean,
    messageid int,
    month int,
    rqtimestamp timestamp,
    rqxml text,
    rstimestamp timestamp,
    rsxml text,
    sequencenbr int,
    year int,
    PRIMARY KEY (transactionid, message_type)
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

CREATE TABLE inselair.time_log_new (
    echotoken text,
    transaction_id text,
    message text,
    lvl text,
    action_type text,
    created_on timestamp,
    year int,
    month int,
    action_duration int,
    action_sequence int,
    duration int,
    total_duration int,
    PRIMARY KEY (echotoken, transaction_id, message, lvl, action_type, created_on, year, month)
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
CREATE MATERIALIZED VIEW inselair.time_log_new_jrt_sita_message_per_month_mv AS SELECT year, month, message, lvl, created_on, action_type, transaction_id, echotoken, duration FROM inselair.time_log_new WHERE year IS NOT NULL AND month IS NOT NULL AND message IS NOT NULL AND created_on IS NOT NULL AND lvl IS NOT NULL AND action_type IS NOT NULL AND transaction_id IS NOT NULL AND echotoken IS NOT NULL PRIMARY KEY ((year, month, message, lvl), created_on, action_type, transaction_id, echotoken) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW inselair.time_log_message_action_per_month_mv AS SELECT year, month, message, lvl, action_type, created_on, transaction_id, echotoken, action_duration, action_sequence FROM inselair.time_log_new WHERE year IS NOT NULL AND month IS NOT NULL AND message IS NOT NULL AND created_on IS NOT NULL AND lvl IS NOT NULL AND action_type IS NOT NULL AND transaction_id IS NOT NULL AND echotoken IS NOT NULL PRIMARY KEY ((year, month, message, lvl, action_type), created_on, transaction_id, echotoken) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;
CREATE MATERIALIZED VIEW inselair.time_log_new_message_per_month_mv AS SELECT year, month, message, created_on, lvl, action_type, transaction_id, echotoken, total_duration FROM inselair.time_log_new WHERE year IS NOT NULL AND month IS NOT NULL AND message IS NOT NULL AND created_on IS NOT NULL AND lvl IS NOT NULL AND action_type IS NOT NULL AND transaction_id IS NOT NULL AND echotoken IS NOT NULL PRIMARY KEY ((year, month, message), created_on, lvl, action_type, transaction_id, echotoken) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;

CREATE TABLE inselair.pss_log_new (
    year int,
    month int,
    rqtimestamp timestamp,
    transactionid text,
    messageid int,
    sequencenbr int,
    cache boolean,
    durationms bigint,
    is_error boolean,
    message_type text,
    rqxml text,
    rstimestamp timestamp,
    rsxml text,
    PRIMARY KEY ((year, month), rqtimestamp, transactionid, messageid, sequencenbr)
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
CREATE MATERIALIZED VIEW inselair.pss_log_new_error_mv AS SELECT year, month, is_error, rqtimestamp, transactionid, messageid, sequencenbr, cache, durationms, message_type, rqxml, rstimestamp, rsxml FROM inselair.pss_log_new WHERE year IS NOT NULL AND month IS NOT NULL AND is_error IS NOT NULL AND rqtimestamp IS NOT NULL AND transactionid IS NOT NULL AND messageid IS NOT NULL AND sequencenbr IS NOT NULL PRIMARY KEY ((year, month, is_error), rqtimestamp, transactionid, messageid, sequencenbr) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000 AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' } AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold' : 32, 'min_threshold' : 4 } AND compression = { 'chunk_length_in_kb' : 64, 'class' : 'org.apache.cassandra.io.compress.LZ4Compressor' } AND default_time_to_live = 0 AND speculative_retry = '99PERCENTILE' AND min_index_interval = 128 AND max_index_interval = 2048 AND crc_check_chance = 1.0;

CREATE TABLE inselair.airline_schedule (
    airline_id text,
    flight_number text,
    departure_airport text,
    arrival_airport text,
    day_of_week int,
    departure_time text,
    aircraft_code text,
    arrival_time text,
    booking_classes set<text>,
    discontinue_date timestamp,
    effective_date timestamp,
    flight_duration text,
    flight_miles int,
    stops int,
    xml text,
    PRIMARY KEY (airline_id, flight_number, departure_airport, arrival_airport, day_of_week, departure_time)
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

CREATE TABLE inselair.pss_log (
    pss text,
    transactionid text,
    messageid int,
    sequencenbr int,
    rqtimestamp timestamp,
    cache boolean,
    durationms bigint,
    rqxml text,
    rstimestamp timestamp,
    rsxml text,
    PRIMARY KEY (pss, transactionid, messageid, sequencenbr, rqtimestamp)
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

CREATE TABLE inselair.sita_arr_sessions (
    response_id text,
    ticket_number text,
    session_id text,
    PRIMARY KEY (response_id, ticket_number)
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
