class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        for bracket in s {
            if bracket.isOpen {
                stack.append(bracket)
            } else if bracket.isClose {
                if stack.isEmpty {
                    return false
                } else {
                    if let open = stack.last, open.matchesClosing(bracket) {
                        stack.removeLast()
                    } else {
                        return false
                    }
                }
            }
        }
        return stack.isEmpty
    }
}

extension Character {
    var isOpen: Bool {
        ["(", "{", "["].contains(self)
    }

    var isClose: Bool {
        [")", "}", "]"].contains(self)
    }

    func matchesClosing(_ bracket: Character) -> Bool {
        switch (self, bracket) {
            case ("(", ")"), ("[", "]"), ("{", "}"):
                return true
            default: 
                return false
        }
    }
}
