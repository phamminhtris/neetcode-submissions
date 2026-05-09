class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var sorted = nums.sorted()
        return sorted[nums.count - k]
    }
}