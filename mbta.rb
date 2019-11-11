
# your solution here
def stops_between_stations(startL, startS, endL, endS)
    subwayLines = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis","Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown","Back Bay", "Forest Hills"]
    }
    count = 0
    toInter1 = 0
    toInter2 = 0
    park_street = 'Park Street'
    if startL == endL
        count = (subwayLines[startL.to_sym].index(startS) - subwayLines[endL.to_sym].index(endS)).abs
        return count
    else
        toInter1 = (subwayLines[endL.to_sym].index(endS) - subwayLines[endL.to_sym].index(park_street)).abs
        toInter2 = (subwayLines[startL.to_sym].index(startS) - subwayLines[startL.to_sym].index(park_street)).abs
        count = (toInter2 - toInter1).abs
        return count
    end
    return count
end
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')