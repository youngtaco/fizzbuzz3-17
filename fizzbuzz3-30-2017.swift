



enum Answer: Equatable {
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
    
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz), (.buzz, .buzz), (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let leftNum), .number(let rightNum)):
            return leftNum == rightNum
        case (.fizz, _), (.buzz, _), (.fizzBuzz, _), (.number, _):
            return false
        }
    }
}

func transform(n: Int) -> Answer {
    if n % 3 == 0 && n % 5 != 0 {
        return .fizz
    } else if n % 5 == 0 && n % 3 != 0 {
        return .buzz
    } else if n % 15 == 0 {
        return .fizzBuzz
    } else {
        return Answer.number(n)
        
    }
    
    
    
}
transform(n: 5)










///////////////////////////////////////////////////////////////////////////////////////////







 
enum Answer : Equatable {
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
    
    
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz), (.buzz, .buzz), (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let leftNum), .number(let rightNum)):
            return leftNum == rightNum
        case (.fizz, _), (.buzz, _), (.fizzBuzz, _), (.number, _):
            return false
        }
    }
}


func transform(n: Int) -> Answer {
    switch n {
    case _ where n % 3 == 0 && n % 5 != 0:
        return .fizz
    case _ where n % 5 == 0 && n % 3 != 0:
        return .buzz
    case _ where n % 15 == 0:
        return .fizzBuzz
    default:
        break
    }
    return Answer.number(n)
    
}

transform(n: 45)












