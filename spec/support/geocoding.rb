google_json = <<-JSON
{
   "results" : [
      {
         "address_components" : [
            {
               "long_name" : "4441",
               "short_name" : "4441",
               "types" : [ "street_number" ]
            },
            {
               "long_name" : "Collins Avenue",
               "short_name" : "Collins Ave",
               "types" : [ "route" ]
            },
            {
               "long_name" : "Mid-Beach",
               "short_name" : "Mid-Beach",
               "types" : [ "neighborhood", "political" ]
            },
            {
               "long_name" : "Miami Beach",
               "short_name" : "Miami Beach",
               "types" : [ "locality", "political" ]
            },
            {
               "long_name" : "Miami Beach",
               "short_name" : "Miami Beach",
               "types" : [ "administrative_area_level_3", "political" ]
            },
            {
               "long_name" : "Miami-Dade",
               "short_name" : "Miami-Dade",
               "types" : [ "administrative_area_level_2", "political" ]
            },
            {
               "long_name" : "Florida",
               "short_name" : "FL",
               "types" : [ "administrative_area_level_1", "political" ]
            },
            {
               "long_name" : "United States",
               "short_name" : "US",
               "types" : [ "country", "political" ]
            },
            {
               "long_name" : "33140",
               "short_name" : "33140",
               "types" : [ "postal_code" ]
            }
         ],
         "formatted_address" : "4441 Collins Avenue, Miami Beach, FL 33140, USA",
         "geometry" : {
            "location" : {
               "lat" : 25.81797220,
               "lng" : -80.12238979999999
            },
            "location_type" : "ROOFTOP",
            "viewport" : {
               "northeast" : {
                  "lat" : 25.81932118029151,
                  "lng" : -80.12104081970848
               },
               "southwest" : {
                  "lat" : 25.81662321970850,
                  "lng" : -80.12373878029150
               }
            }
         },
         "types" : [ "street_address" ]
      }
   ],
   "status" : "OK"
}
JSON

FakeWeb.register_uri(:any, %r|http://maps\.googleapis\.com/maps/api/geocode|, :body => google_json)