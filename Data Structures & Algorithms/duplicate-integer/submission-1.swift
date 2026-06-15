class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()
        for n in nums {
            if !seen.insert(n).inserted {
                return true
            }
        }
        return false
    }
}
