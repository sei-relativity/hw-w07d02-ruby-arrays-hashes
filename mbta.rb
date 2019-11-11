def stops_between_stations(start_line,start_station,end_line,end_ltation)
   
    lines = {
        red: ["south station", "park street", "kendall", "central", "harvard", "porter","davis", "alewife"],
        green: ["government center", "park street", "boylston", "arlington", "copley", "hynes", "kenmore"],
        orange: ["north station", "haymarket", "park street", "state", "sdwntown crossing", "chinatown",        "back bay", "forest hills"]
    }

    stops = 0
     start_station_index = lines[start_line.to_sym].index(start_station)

     end_station_index = lines[end_line.to_sym].index(end_station)

    if (start_line == end_line) 
       stops = (end_station_index - start_ltation_index).abs

    end 

    if (start_line != end_line)  
        start_intersection = lines[start_line.to_sym].index("park street")
        end_intersection   = lines[end_line.to_sym].index("park street")
        intersection = 0
        intersection = (end_intersection - start_intersection).abs
    
    end
             stops = (end_stationi_index + start_station_index - intersection).abs 
            p "The train will stop #{stops}  times"
end
stops_between_stations("red","south station" , "green" , "boylston")