
# your solution here
stations = {
    red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'porter', 'Davis', 'Alewife'],
    green: ['Goverment Center', 'Park Street','biylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
    orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back bay', 'Forest Hills']
}

def stops_between_stations(first_line, first_station, stop_line, stop_station) 
    #vars
    index_of_first_line = first_line.index(first_station)
    p index_of_first_line
    index_of_stop_line = stop_line.index(stop_station)
    p index_of_stop_line
    park_street_fist_line = first_line.index('Park Street')
    p park_street_fist_line
    park_street_stop_line = stop_line.index('Park Street')
    p park_street_stop_line
    
#if user uses the same line - red for example 
    if (first_line == stop_line) 
        return p " total steps:  #{(index_of_first_line - index_of_stop_line).abs} "    
    end
    ##if user travel on different lines - red and green
    ##caclulate how many station from first line to park street (mathimatic way)
    first_jorney = (index_of_first_line - park_street_fist_line).abs 
    p "first ### #{first_jorney}"
    ##calculate how many station from park street to stop station
    second_journey = (park_street_stop_line - index_of_stop_line).abs
    p "second#### #{second_journey}"
    p "total stops : #{first_jorney + second_journey}"

end


stops_between_stations(stations[:red], 'Alewife', stations[:red], 'South Station')
stops_between_stations(stations[:red], 'South Station', stations[:green], 'Kenmore')