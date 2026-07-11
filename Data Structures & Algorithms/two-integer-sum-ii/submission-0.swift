class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var l = 0, r = nums.count - 1
        while l < r {
            let sum = nums[r] + nums[l]
            if sum > target {
                r -= 1
            } else if sum < target {
                l += 1
            } else {
                return [l + 1, r + 1]
            }
        }
        return []
    }
}
