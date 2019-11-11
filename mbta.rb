$subway = {
  "Red" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
  "Green" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
  "Orange" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],

}
#This function will print all the station in one line and return the counter#
def print_one_line(line, station_a, station_b)

  # binding.pry
  start_station = $subway[line].index(station_a)
  end_station = $subway[line].index(station_b)
  count = (end_station - start_station).abs
  #   p start_station
  #   p end_station
  #   p count
  if (start_station <= end_station)
    for x in start_station..end_station
      p "Rider arrives at #{line} Line and #{$subway[line].fetch(x)}."
    end
  else
    for x in -start_station..end_station
      p "Rider arrives at #{line} Line and #{$subway[line].fetch(x.abs)}."
    end
  end
  count
end

def stops_between_stations(start_line, start_station, end_line, end_station)
  p 'Rider boards the train a #{start_line} Line and #{start_station}.'
  stops = 0
  if start_line == end_line
    stops = print_one_line(start_line, start_station, end_station)
  else
    stops = print_one_line(start_line, start_station, "Park Street")
    p "Rider transfers from #{start_line} Line to #{end_line} Line at Park Street."
    stops += print_one_line(end_line, "Park Street", end_station)
  end
  p "#{stops}stops in total."
end

# p stops_between_stations("Red", "Alewife", "Red", "Alewife") # 0
# p stops_between_stations("Red", "Alewife", "Red", "South Station") # 7
# p stops_between_stations("Red", "South Station", "Green", "Kenmore") # 6
stops_between_stations("Red", "South Station", "Green", "Kenmore")
