# your solution here
def stops_between_stations (start_line, start_station, end_line, end_station)
    
subway_lines = {
    Red:["South Station", "Park Street", "kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    Green:["Government Center","Park Street", "Boylston", "Arlington", "Copley", "Hynes","Kenmore"],
    Orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown","Back Bay", "Forest Hills"]}


    number_of_station = 0
    start_index =  subway_lines[start_line.to_sym].index(start_station)
    finish_index = subway_lines[end_line.to_sym].index(end_station)
    

    if (start_line == end_line)
        number_of_station = start_index - finish_index
        puts number_of_station.abs
        
        # puts "#{start_line} and #{end_line} are the same"
        # puts "#{start_index} and #{finish_index}"
        elsif (start_line != end_line)
            to_exchange_index = subway_lines[start_line.to_sym].index("Park Street")

            exchange_final_line_index = subway_lines[end_line.to_sym].index("Park Street")

        

            number_of_station = (start_index - to_exchange_index).abs
            number_of_station += (exchange_final_line_index - finish_index).abs

            puts number_of_station
     
    end
end

# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6