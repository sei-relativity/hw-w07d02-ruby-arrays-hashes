



def stops_between_stations(first_station,first_stop, last_station, last_stop)
  lines = {
  "Red"=>["South Station", "Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
  "Green"=> ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
  "Orange"=> ['North Station',"Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}

  if first_station == last_station
    distance = stops_in_same_station(first_stop, last_stop, first_station)
      puts "The total distance for the whole trip is : #{distance}"
  else 
    stops_in_diffirent_statoins(first_station,first_stop, last_station, last_stop)
  end

end

def stops_in_same_station(first_stop,last_stop,line)
  lines = {
  "Red"=>["South Station", "Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
  "Green"=> ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
  "Orange"=> ['North Station',"Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}
  first_location = lines[line].index(first_stop)
  last_location = lines[line].index(last_stop)
  number_of_stops = (first_location - last_location).abs
  number_of_stops
end

def stops_in_diffirent_statoins(first_station,first_stop, last_station, last_stop)
    lines = {
  "Red"=>["South Station", "Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
  "Green"=> ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
  "Orange"=> ['North Station',"Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}
  distance_to_intersect = stops_in_same_station(first_stop,"Park Street", first_station)
  distance_from_intersect = stops_in_same_station('Park Street',last_stop, last_station)

  total_distance = distance_to_intersect + distance_from_intersect
  puts "The total distance for the whole trip is : #{total_distance}"
  
end

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6