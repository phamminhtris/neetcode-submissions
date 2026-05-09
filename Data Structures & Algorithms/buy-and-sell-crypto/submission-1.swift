class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var l = 0, r = 1
        var maxProfit = 0
        while r < prices.count {
            if prices[l] < prices[r] {
                maxProfit = max(maxProfit, prices[r] - prices[l])
            } else {
                l = r
            }
            r += 1
        }
        return maxProfit
    }
}
