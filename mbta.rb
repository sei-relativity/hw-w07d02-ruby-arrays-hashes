
# your solution here



def stops_between_stations(start_line, start_station, end_line, end_station)
    lines = [
        red: [ 'South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
        green: [ 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
        orange: [ 'North Station', 'Haymarket', 'Park Street', 'State', 'Downtown', 'Chinatown', 'Back Bay', 'Forest Hills'],
    ]

    if(start_line == end_line)
        index_of_start_station = lines[start_line].index(start_station)
        index_end_station = lines[start_line].index(end_station)
        stops = (index_of_start_station - index_end_station).abs()
        puts stops
        
    if(start_line =! end_line)
        start_station_index = lines[start_line].index(start_station);
        park_start = lines[start_line].index('Park Street')
        trip_one = (park_start - start_station_index).abs()

        end_point = lines[end_line].index(end_station);
        park_two= lines[end_line].index('Park Street');
        trip_two = (park_two- end_point).abs()
        
        total = trip_two + trip_one 
        
        p total
end

p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
#stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
#stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6