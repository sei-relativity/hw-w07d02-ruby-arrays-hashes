
# your solution here
# def stops_between_stations

# end




# p subway_lines["Red"]
# p subway_lines["Green"]
# p subway_lines["Orange"]

def stops_between_stations  (start_line,start_station,end_line, end_station)
    
    
    subway_lines = {
        "Red" => [
            "South Station",
            
            "Park Street",
            
            "Kendall",
            
            "Central",
            
            "Harvard",
            
            "Porter",
            
            "Davis",
            
            "Alewife"
        ],
        
        "Green" => [
            "Government Center",
            
            "Park Street",
            
            "Boylston",
            
            "Arlington",
            
            "Copley",
            
            "Hynes",
            
            "Kenmore"
            
        ],   
        
        "Orange" => [
            
            "North Station",
            
            "Haymarket",
            
            "Park Street",
            
            "State",
            
            "Downtown Crossing",
            
            "Chinatown",
            
            "Back Bay",
            
            "Forest Hills"
            
        ]
    }
    start_station_index = subway_lines[start_line].index(start_station)
   
    end_station_index = subway_lines[end_line].index(end_station)
       
    if start_line == end_line
    
       total_trip = (start_station_index - end_station_index).abs()
    
    else
     start_line_park_street_index = subway_lines[start_line].index('Park Street')

     trip_to_park_street = start_station_index - start_line_park_street_index
        
     park_street_index = subway_lines[end_line].index('Park Street')    

     trip_to_destination = end_station_index - park_street_index
        
     total_trip = trip_to_park_street.abs() + trip_to_destination.abs()
    end   
    end      
    p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') #0
    p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
    p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6