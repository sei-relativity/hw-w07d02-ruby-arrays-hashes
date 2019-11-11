lines= {
red: ["South Station",
"Park Street",
"Kendall",
"Central",
"Harvard",
"Porter",
"Davis",
"Alewife"], 
green: ["Government Center",
"Park Street",
"Bolyston",
"Arlington",
"Copley",
"Hynes",
"Kenmore"], 
orang: ["North Station",
"Haymarket",
"Park Street",
"State",
"Downtown Crossing",
"Chinatown",
"Back Bay",
"Forest Hills"], }

def stops_on_one_line(line,start,ends) 
    stops=lines[line].index(line) - lines[line].index(ends)
    if stops < 0 
        return -stops 
    else 
        return stops 
end 

def stops_between_stations(start_line,start_station,end_line,end_station)
    stops=0 
    if start_line === end_line 
        stops=stops_on_one_line(start_line,start_station,end_station)
    else 
        stops=stops_on_one_line(start_line,start_station,'Park Street') + stops_on_one_line(end_line,end_station,'Park Street')
return stops 
end 

end 

puts stops_between_stations('red', 'Alewife', 'red', 'Alewife')
puts stops_between_stations('red', 'Alewife', 'red', 'South Station') 
puts  stops_between_stations('red', 'South Station', 'green', 'Kenmore')

end 

