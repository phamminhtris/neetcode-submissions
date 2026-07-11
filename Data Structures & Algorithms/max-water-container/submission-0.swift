class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        guard heights.count > 1 else { return 0 }
        var l = 0, r = heights.count - 1
        var maxWater = 0
        while l < r {
            let area = min(heights[l], heights[r]) * (r - l)
            maxWater = max(maxWater, area)
            if heights[l] < heights[r] {
                l += 1
            } else { 
                r -= 1
            }
        }
        return maxWater
    }
}
