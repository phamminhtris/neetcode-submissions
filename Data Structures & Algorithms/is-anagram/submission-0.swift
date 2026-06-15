class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var charDict = [Character: Int]()
        for char in s {
            charDict[char, default: 0] += 1
        }

        for char in t {
            if let charCount = charDict[char] {
                let newCount = charCount - 1
                if newCount == 0 {
                    charDict[char] = nil
                } else {
                    charDict[char] = newCount
                }
            } else {
                return false
            }
        }

        return charDict.isEmpty
    }
}
