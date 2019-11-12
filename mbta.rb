
# your solution here 
def stops_between_stations
    mbta = {
        Red:['South Station', 'Park Street', 'Kendall','Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
        Green: ['Government Center','Park Street', 'Boylston' , 'Arlington' , 'Copley', 'Hynes' , 'Kenmore'],
        Orang: ['North Station', 'Haymarket', 'Park Street' , 'State' ,'Downtown Crossing' , 'Chinatown' ,'Back Bay' , 'Forest Hills']
        }
        
        def subway (sLine, startS, eLine, endS) {
            lines = ['Red', 'Green', 'Orange']
            if (!(sLine && eLine && lines.index(sLine.to_s.downcase >= 0 && lines.index(eLine.to_s.downcase) >= 0))
                return p "Please select one of available lines: Red, Green, OR Orange"
        
            sl = sLine.downcase();
            el = eLine.downcase();
        };
        
        if (!(startS && endS && subway[sl].index(starS.to_s.downcase) > 0 && stops[el].index(endS.to_s.downcase) > 0))
                return p "Please select one of the available stations: \n red line stations: South Station, Park Street, Kendall, Central, Harvard, Porter, Davis, and Alewife. \n green line stations: Government Center, Park Street, Boylston, Arlington, Copley, Hynes, and Kenmore. \n orange line stations: North Station, Haymarket, Park Street, State, Downtown Crossing, Chinatown, Back Bay, and Forest Hills."
        
            lSStation = starS.downcase();
            lEStation = endS.downcase();
        
            # Finding the postions
            sS = subway[st].index(lSStation);
            eS = subway[el].index(lEStation);
        
            if (sLine == lELine) {
                return Math.abs(eS - sS);
            }
            end
        
            return Math.abs(sS - stops[sLine].index('park street')) + Math.abs(eS - stops[eLine].index('park street'));
        end
        
        }

end