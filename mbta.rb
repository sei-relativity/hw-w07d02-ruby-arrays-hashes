def stops_between_stations(start_line, start_station, end_line, end_station)
    stations = {
        Red: [ "South Station" , "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife" ],
        Green: [ "Government Center" , "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore" ],
        Orange: [ "North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills" ]
    }
stops = 0
stops = (stations[end_line.to_sym].index("#{end_station}") - stations[start_line.to_sym].index("#{start_station}")).abs()
end
p "Please Put your start and end stations"