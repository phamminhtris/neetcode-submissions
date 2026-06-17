class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: [Int]]()
        for (i, n) in nums.enumerated() {
            dict[n, default: []].append(i)
        }

        for num in nums {
            let complement = target - num
            if let complementIndices = dict[complement] {
                if complement == num {
                    if complementIndices.count >= 2 {
                        let first = complementIndices[0]
                        let second = complementIndices[1]
                        return [first, second].sorted()
                    }
                } else {
                    let first = dict[num]![0]
                    let second = complementIndices[0]
                    return [first, second].sorted()
                }
            }
        }

        return []
    }
}
