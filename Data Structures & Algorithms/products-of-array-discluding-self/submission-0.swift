class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var zeroCount = 0
        var prod = 1
        for num in nums { 
            if num == 0 {
                zeroCount += 1
            } else {
                prod *= num
            }
        }

        if zeroCount > 1 {
            return Array<Int>(repeating: 0, count: nums.count)
        } else if zeroCount == 1 {
            return nums.map { 
                if $0 == 0 {
                    prod 
                } else { 
                    0
                }
            }
        } else {
            return nums.map { prod / $0 }
        }
    }
}
