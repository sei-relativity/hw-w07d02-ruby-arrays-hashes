
# your solution here
def stops_between_stations(start_line, start_station, end_line, end_station)

# Declare the lines arrays Hash
lines={
    Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
    Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}

# if the rider does not change line, locate the line from the hash key
# compared the station index get the absolute difference
if start_line==end_line
    return (lines[start_line.to_sym].index(start_station) - lines[end_line.to_sym].index(end_station)).abs
end
# General case if the rider changes station. compare, absolute, and add the difference between input stations and "Park Street"
    return((lines[start_line.to_sym].index(start_station) - lines[start_line.to_sym].index("Park Street")).abs  + (lines[end_line.to_sym].index(end_station) - lines[end_line.to_sym].index("Park Street")).abs)
end