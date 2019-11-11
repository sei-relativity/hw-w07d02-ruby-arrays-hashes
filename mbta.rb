
# your solution here
def stops_between_stations(a,b,c,d)
x={red:[ "South Station","Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"], green:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"], Orange:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hill"]}

return p (x[a.to_sym].index(b) - x[c.to_sym].index(d) ).abs() if a==c

p ((x[(a.downcase).to_sym].index(b) - x[(a.downcase).to_sym].index("Park Street")).abs() )+ ((x[(c.downcase).to_sym].index("Park Street") - x[(c.downcase).to_sym].index(d) ).abs())

end

# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('red', 'South Station', 'green', 'Kenmore') # 6