



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
    for i in 1...n {
        if i % 3 == 0 && i % 5 != 0 {
            print("fizz")
        } else if i % 5 == 0 && i % 3 != 0 {
            print("buzz")
        } else if i % 15 == 0 {
            print("FizzBuzz")
        } else {
            
            
            print(i)
        }
        
    }
    return Answer.number(n)
}


transform(n: 100)





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
 for i in 1...n {
 switch (i) {
 case _ where i % 3 == 0 && i % 5 != 0:
 print("fizz")
 case _ where i % 5 == 0 && i % 3 != 0:
 print("buzz")
 case _ where i % 15 == 0:
 print("FizzBuzz")
 default:
 print(i)
 
 }
 
 }
 return Answer.number(n)
 }
 
 
 transform(n: 100)
 












