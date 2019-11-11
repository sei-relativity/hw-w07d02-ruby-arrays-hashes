
# your solution here
def stops_between_stations(startLain,endLine,startStation,endStation)
     subway = {
        Red:["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
        Green:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
        Orange:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
    }
    
        
    if startLain==startStation
    return p(subway[startLain.to_sym].index(endLine) - subway[startStation.to_sym].index(endStation) ).abs()
    p ((subway[(startLain.downcase).to_sym].index(endLine) - subway[(startLain.downcase).to_sym].index("Park Street")).abs() )+ ((subway[(startStation.downcase).to_sym].index("Park Street") - subway[(startStation.downcase).to_sym].index(endStation)).abs())
end
