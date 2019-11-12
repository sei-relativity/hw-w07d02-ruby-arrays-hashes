
# your solution here
def stops_between_stations(first_line,first_station,second_line,second_station)
stations={Red:[ "South Station","Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"], Green:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"], Orange:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hill"]}

return p (stations[(first_line).to_sym].index(first_station) - stations[(second_line).to_sym].index(second_station)).abs() if first_line==second_line


p ((stations[(first_line).to_sym].index(first_station) - stations[(first_line).to_sym].index("Park Street")).abs() )+ ((stations[(second_line).to_sym].index("Park Street") - stations[(second_line).to_sym].index(second_station) ).abs())

end

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6