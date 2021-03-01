import UIKit

// Syntax for optionals
var k:String? = nil
if k != nil {
    print(k!)
}

// Making a class, function inside a class,
class LoginButton {
    var x:(String)? = nil
     func didTapButton() {
        print("Button got tapped")
    }
    func didTapButtonTwice() {
        print("Button got tapped twice")
    }
}

var button:LoginButton? = LoginButton()
button?.didTapButton()
button?.x


// Making dictionary and accessing a value of it
var dict = ["Kushal" : "Ios", "Sandeep" : "Ios", "Jatin" : "Ios", "Archit" : "Web"]

print(dict["Kushal"]!)

let value = dict["Jatin"]
if value != nil {
    print(value!)
}


// Making Dictionary inside a dictionary
var newdict: [String : [String: Int]] = ["Noida" : ["Sector 70" : 201309 , "Sector 1" : 201301], "Siliguri" : ["Jyotinagar" : 734005, "Ashrampara" : 734001], "SevokeRoad" : ["Jatin": 327]]

print(newdict["Noida"]!)

//accessing value of a dictionary inside a dictionary by giving the above datatype [String: [String: Int]]
var newvalue = newdict["Noida"]!
print(newvalue["Sector 70"]!)


// Creating dictionary inside an array and accessing a
var array = [
    ["Bagdogra" : "IXB"],
    ["Delhi" : "IGI"],
    ["Chennai" : "CHN"],
    ["Chandigarh" : "CHD"]
]

for index in 0...3 {
    print(array[index])
}
 

var c = [Int]()
for _ in 1...8 {
    var randomNuber = Int.random(in: 1...8)
    c.append(randomNuber)
}
print("printing array of random numbers \(c)")


//printing sum of all the elements of above array
var sum = 0
for i in c {
    sum += i
}
print("Sum of elements of above array: \(sum)")



//Example of repeat while loop
repeat {
    
    let randomNumber = Int.random(in: 0...10)
    if c.contains(randomNumber) == false {
        c.append(randomNumber)
    }
    print("printing elements using repeat while loop: \(randomNumber)")
} while(c.count < 5)


//Example of while loop
while (c.count < 5) {
    let randomNumber2 = Int.random(in: 1...5)
    if  c.contains(randomNumber2) == false {
        c.append(randomNumber2)
    }
    print("Printing  elements using while loop: \(randomNumber2)")
}


print("newfunction")


/*protocol CarDelegate: Car {
    var color: UIColor { get }
    func allWheelDrive()
    func twoWheelDrive()
}

class Car {
    weak var delegate: CarDelegate?
} */

// Using Function filtering Number
func filterNumberGreaterThanValue(value: Int, numbers :[Int]) -> [Int] {
var filteredValues = [Int]()
    for num in numbers {
        if num > value {
            filteredValues.append(num)
        }
    }
    
    return filteredValues
}
var values = filterNumberGreaterThanValue(value: 5, numbers: [1,2,3,4,5,6,7,8,9,10])
print("Printing values using normal func: \(values)")


// Using Closures filtering number
func filterNumberWithClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filterNumber = [Int]()
    for num in numbers {
        if closure(num) {
            filterNumber.append(num)
        }
    }
    return filterNumber
}
func greaterThanValue(value: Int) -> Bool {
    return value > 5
}
func divisibleValue(value: Int) -> Bool {
    return value % 5 == 0
}

let filteredList = filterNumberWithClosure(closure: greaterThanValue, numbers: [1,2,3,4,5,6,7,8,9])

var divisibleList = filterNumberWithClosure(closure: divisibleValue, numbers: [10,12,15,25,28,30])


print("Printing values using closure func: \(filteredList)")
print(divisibleList)

func makingClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var typeArray = [Int]()
    for index in numbers {
        if closure(index){
            typeArray.append(index)
        }
    }
    
    return typeArray
}
func dividingNumbers(x: Int) -> Bool {
    return x % 5 == 0
}
var result = makingClosure(closure: dividingNumbers, numbers: [10, 20, 30 ,40, 12, 22, 33, 44, 60, 70, 80])
print(result)
