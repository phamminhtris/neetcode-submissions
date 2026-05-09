class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqDict = [Int: Int]()
        for n in nums { 
            freqDict[n, default: 0] += 1
        }

        let res = freqDict
            .sorted { $0.value > $1.value }
            .map { $0.key }
            .prefix(k)

        return Array(res)

    }
}
