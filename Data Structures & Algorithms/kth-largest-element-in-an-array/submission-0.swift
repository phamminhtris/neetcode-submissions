class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums.sorted()
        var count = k - 1
        while count > 0 {
            nums.removeLast()
            count -= 1
        }

        return nums.removeLast()
    }
}