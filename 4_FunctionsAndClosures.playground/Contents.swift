
func hello () {
    print("hello!")
    print("how are you!")
    print("whats up")
}
hello()

func goodbye() {
    print("see you later!")
    print("until next time")
    print("goodbye!")
}
goodbye()

func walkDog (numberOfDogs:Int) {
    print("put on\(numberOfDogs) leashes")
    print("put \(numberOfDogs) treats in pocket")
    print("put \(numberOfDogs) poop bags in pocket")
}

walkDog(numberOfDogs: 3)

func timeToWalk (numberOfDogs : Int) {
    let totalMinutes = numberOfDogs * 15
    print("you will walk a total of \(totalMinutes) minutes")
}
timeToWalk(numberOfDogs: 5)

func addition (integer: Int) {
    let answer = integer + 5
    print("your total is \(answer)")
}

addition (integer: 2)
    
func addition(number : Int) -> Int {
    let sum = number + 5
    return sum
    
}




func grade (gradeLevel: Int) {
    if gradeLevel < 6 {
        print("You are in elementary school.")
    }
    else if gradeLevel < 9 && gradeLevel > 5 {
        print("you are in middle school")
    }
}

grade(gradeLevel: 4)

