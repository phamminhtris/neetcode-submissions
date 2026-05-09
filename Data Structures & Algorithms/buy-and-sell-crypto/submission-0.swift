class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var minimum = prices[0]
        var maxProfit = 0
        for i in 1..<prices.count { 
            maxProfit = max(maxProfit, prices[i] - minimum)
            minimum = min(prices[i], minimum)
        }
        return maxProfit
    }
}
