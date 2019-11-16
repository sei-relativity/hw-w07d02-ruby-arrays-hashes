# your solution here
def stops_between_stations(start_line, start_station, end_line, end_station)

    lines={
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
    }
    if start_line==end_line
        return (lines[start_line.to_sym].index(start_station) - lines[end_line.to_sym].index(end_station)).abs
    end

    return ((lines[start_line.to_sym].index(start_station) - lines[start_line.to_sym].index("Park Street")).abs + (lines[end_line.to_sym].index(end_station) - lines[end_line.to_sym].index("Park Street")).abs)
end
stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') #6