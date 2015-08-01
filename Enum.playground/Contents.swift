

import UIKit

enum Day: Int{
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    
    init(){
        self = .Monday
    }
    
    func daysTillWeekend() ->Int{
        return Day.Saturday.rawValue - self.rawValue
    }
    
    func wordOfDay() ->String{
        switch self{
        case .Monday:
            return "Boring"
        case .Friday:
            return "Happy End"
        default:
            return "Typical Day"
        }
    }
}


var today = Day()
today = .Friday
today.daysTillWeekend()
today.wordOfDay()
