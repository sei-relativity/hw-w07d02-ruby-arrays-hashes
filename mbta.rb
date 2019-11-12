
# your solution here

def stops_between_stations(start_line, start_station, end_line, end_station)
    subway_lines = {
        Red:[
            'South Station',
            'Park Street',
            'Kendall',
            'Central',
            'Harvard',
            'Porter',
            'Davis',
            'Alewife'
        ],
        Green: [
            'Government Center',
            'Park Street',
            'Boylston',
            'Arlington',
            'Copley',
            'Hynes',
            'Kenmore'
        ],
        Orange:[
            'North Station',
            'Haymarket',
            'Park Street',
            'State',
            'Downtown Crossing',
            'Chinatown',
            'Back Bay',
            'Forest Hills'
        ],
    }

    start_station_index = subway_lines[start_line.to_sym].index(start_station)
 
     end_station_index = subway_lines[end_line.to_sym].index(end_station)
 
 
 if (start_line == end_line)
    
    return (start_station_index - end_station_index).abs

    start_line_parkstreet = subway_lines[start_line.to_sym].index("Park Street")

    trip_to_park_street = (start_station - start_line_park_street).abs

    end_line_station = subway_lines[end_line.to_sym].index("Park Street")

    trip_to_destination =(end_station - end_line_parkstreet).abs

    total_trip = trip_to_park_street + trip_to_destination 

    return total_trip
 end
end

puts stops_between_stations("Red", "Alewife", "Red", "Alewife") 
puts stops_between_stations("Red", "Alewife", "Red", "South Station") 
puts stops_between_stations("Red", "South Station", "Green", "Kenmore") 
puts stops_between_stations("Orange", "Forest Hills", "Green", "Kenmore") 