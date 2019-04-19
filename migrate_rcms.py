
import urllib2
import os
import sys
import xml.dom.minidom
import json
path="C:/Dev/samples/Inselair_3/flows/log/"


execfile("ConnectToRcmsCassandra.py")
execfile("connect_to_mysql_rcms.py")


def save_airports():
    q= cassandra_query("select * from airport")
    unique_cities = []
    unique_countries =[]
    unique_regions =[]
    unique_airports =[]
    for s in q:
        print s.airport_code
        q1 = "insert into region (code, name) values(%(code)s, %(name)s)"
        q2 = "insert into country (code, name, region_code) values(%(code)s, %(name)s, %(region_code)s)"
        q3 = "insert into city (code, name, country_code) values(%(code)s, %(name)s, %(country_code)s)"
        q4= "insert into airport (code, name, version, city_code) values(%(code)s, %(name)s, %(version)s, %(city_code)s)"

        d4= {
            'code': s.airport_code,
            'name': s.airport_name,
            'version': 0,
            'city_code': s.city_code,
        }
        d3= {
            'code': s.city_code,
            'name': s.city_name,
            'country_code': s.country_code,
        }
        d2= {
            'code': s.country_code,
            'name': s.country_name,
            'region_code': s.region_code,
        }
        d1= {
            'code': s.region_code,
            'name': s.region_name,
        }
        if s.region_code not in unique_regions:
            mysql_query_insert(q1,d1)
            unique_regions.append(s.region_code)
        if s.country_code not in unique_countries:
            mysql_query_insert(q2, d2)
            unique_countries.append(s.country_code)
        if s.city_code not in unique_cities:
            mysql_query_insert(q3, d3)
            unique_cities.append(s.city_code)
        if s.airport_code not in unique_airports:
            mysql_query_insert(q4, d4)
            unique_airports.append(s.airport_code)

def save_equipment():
    q= cassandra_query("select * from equipment")
    unique_elements = []

    for s in q:
        print s.equipment_id
        q1 = "insert into equipment (id, aircraft_type, aircraft_configuration, airline_equipment_code, version) " \
             "values(%(a1)s, %(a2)s,%(a3)s, %(a4)s, %(a5)s)"
        d1= {
            'a1': s.equipment_id,
            'a2': s.aircraft_type,
            'a3': s.aircraft_configuration,
            'a4': s.airline_equipment_code,
            'a5': 0
        }
        if s.equipment_id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.equipment_id)

def save_fare_basis_code():
    q= cassandra_query("select * from fare_basis_code")
    unique_elements = []

    for s in q:
        print s.id
        q1 = "insert into fare_basis_code (id, code, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s)"
        d1= {
            'a1': s.id,
            'a2': s.code,
            'a3': 0,
        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.id)



def save_flight_group():
    q= cassandra_query("select * from flight_group")
    unique_elements = []

    for s in q:
        print s.id
        q1 = "insert into flight_group (id, name, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s)"
        d1= {
            'a1': s.id,
            'a2': s.name,
            'a3': 0,
        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.id)




def save_flights():
    unique_elements = []
    q= cassandra_query("select * from flights_by_destination")

    q+= cassandra_query("select * from flights_by_id")

    q+= cassandra_query("select * from flights_by_name")
    q+= cassandra_query("select * from flights_by_origin")

    for s in q:
        print s.flight_id
        q1 = "insert into flight (id, name, destination, origin, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s )"
        d1= {
            'a1': s.flight_id,
            'a2': s.name,
            'a3': s.destination,
            'a4': s.origin,
            'a5': 0,
        }
        if s.flight_id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.flight_id)


def save_flightgroup_flight():
    unique_elements = []
    q= cassandra_query("select * from flight_group")


    for s in q:
        print s.flight_id
        q1 = "insert into flight_group_flight (fg_id, fl_id) " \
             "values(%(a1)s, %(a2)s)"
        d1= {
            'a1': s.id,
            'a2': s.flight_id,
        }
        mysql_query_insert(q1,d1)
        #if s.flight_id not in unique_elements:
        #    unique_elements.append(s.flight_id)

def save_frequent_flyer_program():
    unique_elements = []
    q= cassandra_query("select * from frequent_flyer_program")


    for s in q:
        print s.frequent_flyer_program_id
        q1 = "insert into frequent_flyer_program (id,name, code, version) " \
             "values(%(a1)s, %(a2)s,  %(a3)s,%(a4)s)"
        d1= {
            'a1': s.frequent_flyer_program_id,
            'a2': s.name,
            'a3': s.code,
            'a4': 0
        }
        mysql_query_insert(q1, d1)
        for ss in s.frequent_flyer_levels:
            q2 = "insert into frequent_flyer_level (id,name, code, ffp_id) " \
                 "values(%(a1)s, %(a2)s,  %(a3)s, %(a4)s)"
            d2= {
                'a1': ss,
                'a2': ss,
                'a3': s.frequent_flyer_levels[ss],
                'a4': s.frequent_flyer_program_id
            }
            mysql_query_insert(q2,d2)



###################################################
def save_geographical_area():
    q= cassandra_query("select * from geographical_area")
    unique_elements = []
    #mysql_exec("insert into region(code,name) values(\"XXX\", \"All\")")
    #mysql_exec("insert into region(code,name) values(\"EUR\", \"Europe\")")
    #mysql_exec("insert into country(code,name, region_code) values(\"XXX\", \"All\",\"XXX\")")
    #mysql_exec("insert into city(code,name, country_code) values(\"XXX\", \"All\",\"XXX\")")
    #mysql_exec("insert into airport(code,name, version, city_code) values(\"XXX\", \"All\",0,\"XXX\")")
    for s in q:
        print s.id
        q1 = "insert into geographical_area (id, name, version, geo_region_code, geo_country_code, geo_city_code, geo_airport_code) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s, %(a6)s , %(a7)s)"
        d1= {
            'a1': s.id,
            'a2': s.name,
            'a3': 0,
            'a4': s.region_code,
            'a5': s.country_code,
            'a6': s.city_code,
            'a7': s.airport_code,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.id)



def save_media():
    q= cassandra_query("select id, type, provider,provider_id, size from media")
    q += cassandra_query("select id, type, provider,provider_id, size from media_by_id")
    q += cassandra_query("select id, type, provider,provider_id, size from media_by_type")
    unique_elements = []

    for s in q:
        print s.id
        q1 = "insert into media (id, type, created_at, provider,provider_id, size, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s, %(a6)s, %(a7)s )"
        d1= {
            'a1': s.id,
            'a2': s.type,
            'a3': '323031392D30342D3139',
            'a4': s.provider,
            'a5': s.provider_id,
            'a6': s.size,
            'a7': 0,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.id)



def save_seller():
    q = cassandra_query("select * from seller")
    unique_elements = []
    for s in q:
        print s.id
        q1 = "insert into seller (id, name, type, iata_code,agency_code,version) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s,%(a6)s )"
        d1 = {
            'a1': s.id,
            'a2': s.name,
            'a3': s.type,
            'a4': s.iata_code,
            'a5': s.agency_code,
            'a6': 0,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1, d1)
            unique_elements.append(s.id)


def save_point_of_sale():
    q= cassandra_query("select * from point_of_sale")
    unique_elements = []
    #mysql_exec("insert into device(id,code, mandatory) values(\"\", \"\", 0)")
    #mysql_exec("insert into seller(id,name,version) values(\"\", \"\", 0)")
    for s in q:
        print s.id
        q1 = "insert into point_of_sale (id, name, language, currency,version) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s)"
        d1= {
            'a1': s.id,
            'a2': s.name,
            'a3': s.language,
            'a4': s.currency,
            'a5': 0,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.id)

        q1 = "insert into pos_device (pos_device_id, device_pos_id) " \
             "values(%(a1)s, %(a2)s)"
        d1= {
            'a1': s.id,
            'a2': s.device_id,
        }
        mysql_query_insert(q1,d1)

        q1 = "insert into pos_geo (pos_geo_id, geo_pos_id) " \
             "values(%(a1)s, %(a2)s)"
        d1= {
            'a1': s.id,
            'a2': s.geographical_area_id,
        }
        mysql_query_insert(q1,d1)

        q1 = "insert into pos_seller (pos_seller_id, seller_pos_id) " \
             "values(%(a1)s, %(a2)s)"
        d1= {
            'a1': s.id,
            'a2': s.seller_id,
        }
        mysql_query_insert(q1,d1)

def save_rich_content():
    q = cassandra_query("select * from rich_content_by_id")
    unique_elements = []
    for s in q:
        print s.id
        q1 = "insert into rich_content (id, name, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s)"
        d1= {
            'a1': s.id,
            'a2': s.name,
            'a3': 0,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)


        q1 = "insert into localized_content (id, language_id, title,description, rich_content_id) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s)"
        d1= {
            'a1': s.id,
            'a2': s.language_id,
            'a3': s.title,
            'a4': s.rich_media_description,
            'a5': s.id,
        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)


        q1 = "insert into media_device (id, device_id, localized_content_id) " \
             "values(%(a1)s, %(a2)s, %(a3)s)"
        d1= {
            'a1': s.id,
            'a2': s.device_id,
            'a3': s.id,
        }
        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)

        q1 = "insert into rich_media (id, media_id, title, description, media_device_id) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s)"
        d1= {
            'a1': s.id,
            'a2': s.rich_media_id,
            'a3': s.rich_media_title,
            'a4': s.rich_media_description,
            'a4': s.rich_media_description,
            'a5': s.id,
        }


        if s.id not in unique_elements:
            mysql_query_insert(q1,d1)
            unique_elements.append(s.id)

        def save_point_of_sale():
            q = cassandra_query("select * from point_of_sale")
            unique_elements = []
            # mysql_exec("insert into device(id,code, mandatory) values(\"\", \"\", 0)")
            # mysql_exec("insert into seller(id,name,version) values(\"\", \"\", 0)")
            for s in q:
                print s.id
                q1 = "insert into point_of_sale (id, name, language, currency,version) " \
                     "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s)"
                d1 = {
                    'a1': s.id,
                    'a2': s.name,
                    'a3': s.language,
                    'a4': s.currency,
                    'a5': 0,

                }
                if s.id not in unique_elements:
                    mysql_query_insert(q1, d1)
                    unique_elements.append(s.id)

                q1 = "insert into pos_device (pos_device_id, device_pos_id) " \
                     "values(%(a1)s, %(a2)s)"
                d1 = {
                    'a1': s.id,
                    'a2': s.device_id,
                }
                mysql_query_insert(q1, d1)

                q1 = "insert into pos_geo (pos_geo_id, geo_pos_id) " \
                     "values(%(a1)s, %(a2)s)"
                d1 = {
                    'a1': s.id,
                    'a2': s.geographical_area_id,
                }
                mysql_query_insert(q1, d1)

                q1 = "insert into pos_seller (pos_seller_id, seller_pos_id) " \
                     "values(%(a1)s, %(a2)s)"
                d1 = {
                    'a1': s.id,
                    'a2': s.seller_id,
                }
                mysql_query_insert(q1, d1)

#######################################

def save_rule_set():
    q = cassandra_query("select * from rule_set")
    unique_elements = []
    for s in q:
        print s.id
        q1 = "insert into rule_set (id, name, rule, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s)"
        d1 = {
            'a1': s.id,
            'a2': s.name,
            'a3': s.rule,
            'a4': 0,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1, d1)





def save_price_optimization():
    q = cassandra_query("select * from price_optimization")
    unique_elements = []
    for s in q:
        print s.id
        q1 = "insert into price_optimization (id, name, air_miles_amount, air_miles_type, monetary_amount, monetary_type, version) " \
             "values(%(a1)s, %(a2)s, %(a3)s, %(a4)s, %(a5)s,  %(a6)s, %(a7)s)"
        d1 = {
            'a1': s.id,
            'a2': s.name,
            'a3': s.air_miles_amount,
            'a4': s.air_miles_type,
            'a5': s.monetary_amount,
            'a6': s.monetary_type,
            'a7': 0,

        }
        if s.id not in unique_elements:
            mysql_query_insert(q1, d1)
            unique_elements.append(s.id)

        parsed = json.loads(str(s.rule_sets))
        for r in parsed:
            print r['rule_set_id']
            q1 = "insert into price_optimization_rule_set(po_id, rule_set_id) " \
                 "values(%(a1)s, %(a2)s)"
            d1 = {
                'a1': s.id,
                'a2': r['rule_set_id'],
            }
            mysql_query_insert(q1, d1)







#save_airports()
#save_equipment()
#save_fare_basis_code()
#save_flight_group()
#save_flights()
#save_flightgroup_flight()
#save_frequent_flyer_program()
#save_geographical_area()
#save_media()
#save_seller()
#save_point_of_sale()
#save_rich_content()
#save_rule_set()
save_price_optimization()



close_mysql()
close_cassandra()
print "OK"

