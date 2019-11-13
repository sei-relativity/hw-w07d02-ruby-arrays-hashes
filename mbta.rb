def stops_between_stations (start_line, start_station, end_line, end_station)

    subway_lines = {
        Red:["South Station", "Park Street", "kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green:["Government Center","Park Street", "Boylston", "Arlington", "Copley", "Hynes","Kenmore"],
        Orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown","Back Bay", "Forest Hills"]}
    
    
        num_of_stations = 0
        #to find the indexes of station 
        start_index =  subway_lines[start_line.to_sym].index(start_station)
        finish_index = subway_lines[end_line.to_sym].index(end_station)
    
    
        if (start_line == end_line)
            num_of_station = (start_index - finish_index).abs
            puts "#{num_of_station} not proper input. Please check again (#{start_line} & #{end_line})"
          
            elsif (start_line != end_line)
               exchange_point_start = subway_lines[start_line.to_sym].index("Park Street")
    
                exchange_point_end = subway_lines[end_line.to_sym].index("Park Street")
    
    
    
                num_of_stations = (start_index -exchange_point_start).abs
                num_of_stations += (exchange_point_end - finish_index).abs
    
                puts num_of_stations
    
        end
    end
    
    end 
     stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
    #stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
    #stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6 