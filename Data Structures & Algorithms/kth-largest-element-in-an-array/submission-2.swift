import HeapModule

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var heap = Heap<Int>()
        for n in nums {
            heap.insert(n)
        }
        for _ in 1..<k {
            _ = heap.popMax()
        }
        return heap.popMax()!
    }
}