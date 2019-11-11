
def stops_between_stations(start_line, start_station, end_line, end_station) 
subway_lines = {
Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}
     results = 0
     puts "#{start_line} #{start_station} #{end_line} #{end_station}"
    puts "Rider boards the train a #{start_line} Line and #{start_station}."
    if start_line === end_line
        results = one_line_stops(start_line, start_station, end_station, subway_lines)
    else 
        results = one_line_stops(start_line, start_station, "Park Street",subway_lines)
        puts "Rider transfers from #{start_line} Line to #{end_line} Line at Park Street."
        results += one_line_stops(end_line, "Park Street", end_station,subway_lines)
    end
    puts "Rider exits the train a #{end_line} Line and #{end_station}."
    puts "#{results} stops in total!"
   end

  def one_line_stops(line, start_station, end_station, subway_lines) 

      start_index = subway_lines[line.to_sym].index(start_station)
      end_index = subway_lines[line.to_sym].index(end_station)
      i = start_index+1
      counter = 0
     if start_index < end_index 
         loop do 
          puts "Rider arrives at #{line} Line and #{subway_lines[line.to_sym][i]}"
          i=i+1
             counter= counter+1
             puts counter
             break if i > end_index
         end
      else 
        loop do 
          i=i-1
         puts "Rider arrives at #{line} Line and #{subway_lines[line.to_sym][i]}."
         counter= counter+1
         break if i > end_index
     end
        end
     return counter 
    end
    
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')     
