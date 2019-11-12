
# your solution here
def stops_between_stations
    cityLines =
        Red:
         [ "South Station",
          "Park Street",
          "Kendall",
          "Central",
          "Harvard",
          "Porter",
          "Davis",
          "Alewife"],
        
        Green:
          ["Government Center",
          "Park Street",
          "Boylston",
          "Arlington",
          "Copley",
          "Hynes",
          "Kenmore"],
    
        Orange: 
         [ "North Station",
          "Haymarket",
          "Park Street",
          "State",
          "Downtown Crossing",
          "Chinatown",
          "Back Bay",
          "Forest Hills"],
    
          stopsBetweenStations = startLine, startStation, endLine, endStation => 
             one 
            if (startLine == cityLines) 
               (endLine == cityLines) 
                p " Rider arrives at #{line}" line and {subway[line](x)}.              !cityLines[startLine].includes(startStation) 
              !cityLines[endLine].includes(endStation)
            ) 
        
            } else {
              if (startLine === endLine) {
                 locationStart = cityLines[startLine].indexOf(startStation);
                 locationEnd = cityLines[endLine].indexOf(endStation);
                 res = Math.abs(locationStart - locationEnd);
                console.log(`${res} stops`);

                def stopsBetweenStations (startLine,startStation, endLine,endStation)
                    p 'rider boreds the train a #{start line}' line and # {start_station}.
                    
                    if startLine== endLine
                        stops= (startLine,startStation,endStation)
                        else
                        stops = (startLine,startStation,"park street")

                       puts "Ride transfer from #{startLine} line and # {start_station}."
-          