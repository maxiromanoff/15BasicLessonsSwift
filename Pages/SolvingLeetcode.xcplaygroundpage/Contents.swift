import Foundation

/**
    Plus one: https://leetcode.com/problems/plus-one/
*/

func plusOne(digits: [Int]) -> [Int] {
    
    var digits = digits
    
    for i in (0..<digits.count).reversed(){
        if digits[i] < 9 {
            digits[i] += 1
            return digits
        }
        digits[i] = 0
    }
    
    digits.insert(1, at: 0)
    return digits
}
//print(plusOne(digits: [9]))
//print(plusOne(digits: [1,2,3]))
//print(plusOne(digits: [4,3,2,1]))
//print(plusOne(digits: [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]))

/**
    Move Zeroes: https://leetcode.com/problems/move-zeroes/
*/

func moveZeroes(_ nums: inout [Int]){
    var lastNonZeroIndex = 0
    for i in 0..<nums.count {
        guard nums[i] != 0 else { continue }
        nums.swapAt(i, lastNonZeroIndex)
        lastNonZeroIndex += 1
    }
    print(nums)
}

//var arr = [0]
//var arr2 = [0,1,0,3,12]
//moveZeroes(&arr)
//moveZeroes(&arr2)

/**
    swapAt function
*/
//var names = ["Paul", "John", "George", "Ringo"]
//var swappedNames = names.swapAt(0, 1)
//print(names)


//let numbers = [0,1,0,3,12]
//for number in numbers where number != 0 {
//    print(number)
//}

/**
 Remove Digit From Number to Maximize Result: https://leetcode.com/problems/remove-digit-from-number-to-maximize-result/
*/

func removeDigit(_ number: String, _ digit: Character) -> String {
      var arr = [String]()
    
      var copy = number
    
      for (i, num) in number.enumerated() {
          if num == digit {
              let index = number.index(number.startIndex, offsetBy: i)
              copy.remove(at: index)
              arr.append(copy)
              copy = number
          }
      }
      arr.sort()
      let ans = arr[arr.count - 1]
      return String(ans)
}

print(removeDigit("123", "3"))
print(removeDigit("1231", "1"))
print(removeDigit("551", "5"))

// index()
let s = "Swift"
let i = s.index(s.endIndex, offsetBy: -3)
//print(s[i])
