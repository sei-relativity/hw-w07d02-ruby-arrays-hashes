
def stops_between_stations (start_line, start_station, end_line, end_station)

    stations = {
        Red: [ "South Station" , "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife" ],
        Green: [ "Government Center" , "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore" ],
        Orange: [ "North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills" ]
    }
        
        total_stops = 0

total_stops = (stations[end_line.to_sym].index("#{end_station}") - stations[start_line.to_sym].index("#{start_station}")).abs()

#  first_trip =  (stations[start_line.to_sym].index("#{start_station}") - stations[start_line.to_sym].index("Park Street")).abs()
#  second_trip = (stations[end_line.to_sym].index("#{end_station}") - stations[start_line.to_sym].index("Park Street")).abs()
#  total_stops = first_trip + second_trip;
 
end
# test >> stations[:Red].index("Kendall") - stations[:Red].index("south station")
p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6



