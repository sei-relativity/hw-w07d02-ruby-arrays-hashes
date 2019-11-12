



 


# Function to calculate the route's total stops
def stops_between_stations (startline, startstation, endline, endstation) 

  # assign the subway lines as arrays
    subwaylines = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
    }

	total_number_of_stops = 0
			
			 start_station_index = subwaylines[startline.to_sym].index(startstation)
			 end_station_index = subwaylines[endline.to_sym].index(endstation)

			#Check if the entered lines are equal
			if (startline == endline) 

				#Check if the starting station index is less than the ending station and vice versa, subtract to have the total stops number
				
					total_number_of_stops = (end_station_index-start_station_index).abs
			

				# Return the printing function with result
				# return printRoute(startline, startstation, endline, endstation, total_number_of_stops)
            end

			# Check if the entered lines are not equal
			if (startline != endline) 

				# Assign "Park Street" station to the following variables
				inter_station_onstartline = subwaylines[startline.to_sym].index("Park Street")
				inter_station_onendline = subwaylines[endline.to_sym].index("Park Street")

				#Initialise a total number of stops variables
				subtract_inter_stations = 0

		
					subtract_inter_stations = (inter_station_onendline - inter_station_onstartline).abs
    
                    
                    
                    #Return the printing function with result
                    # return printRoute(startline, startstation, endline, endstation, total_number_of_stops)
                    
                    
                end 
                total_number_of_stops = (start_station_index - endstation_index - subtractInterStations).abs
                p total_number_of_stops
end

#methiod to print the route's details
#  def printRoute (startline, startstation, endline, endstation, total_number_of_stops) 
 
# 	p("From " + startstation + ", rider needs " + total_number_of_stops + " stops to arrive to " + endstation)
# 	p("Rider boards the train at " + startline + " Line and " + startstation)
# 	p("Rider arrives at " + endline + " Line and " + endstation)
# 	p("Rider exits the train at " + endline + " Line and " + endstation)

# end

stops_between_stations('Red','South Station','Red','Kendell')