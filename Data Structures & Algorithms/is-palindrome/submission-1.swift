class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let characters = Array(s)
        var l = 0, r = characters.count - 1
        while l < r {
            if !characters[l].isAlpha {
                l += 1
            } else if !characters[r].isAlpha {
                r -= 1
            } else if characters[l].lowercased() != characters[r].lowercased() {
                return false
            } else {
                l += 1
                r -= 1
            }
        }
        return true
    }
}

extension Character {
    var isAlpha: Bool {
        isLetter || isNumber
    }
}
