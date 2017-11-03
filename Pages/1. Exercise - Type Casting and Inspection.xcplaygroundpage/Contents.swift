/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var colletion: [Any] = [2.01, 12, "Sunny day", false, true]
for elem in colletion {
    
    print("Element: \(elem)" )
    
    switch elem {
    case  let x where ((x as? Int) != nil):
        print("The Integer has a value of : \(elem)")
    case  let x where ((x as? Double) != nil):
        print("The Double has a value of : \(elem)")
    case  let x where ((x as? String) != nil):
        print("The String has a value of : \(elem)")
    case  let x where ((x as? Bool) != nil):
        print("The Bool has a value of : \(elem)")
    default:
        print("NOt Int or Double or String or Bool : \(elem)")
    }
}

if let x = colletion[0] as? Double {
    print("\(x) is Double!")
}

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */


/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let assorted: [String: Any] = ["one": 1, "two": 2.0, "three": "three", "four": true, "five": false]
for (key, val) in assorted {
    print("\(key) - \(val)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total = 0.0
var delta = 0.0

for (key, val) in assorted {
    print("Current Total = \(total)")
    
    
    if let x = val as? Int {
        delta = Double(x)
    }
    if let x = val as? Double {
        delta = Double(x)
    }
    if let x = val as? String {
        delta = Double(1.0)
    }
    if let x = val as? Bool {
        print("- \(total)")
        delta = (x == true ? Double(2) : Double(-3))
        print("- \(total)")
    }
    
    total += delta
    print("Current Total = \(total), delta = \(delta)")
}

print("Total = \(total)")


/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */


//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
