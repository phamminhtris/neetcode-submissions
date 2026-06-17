/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var inorderResult = [Int]()
        visit(root, inorder: &inorderResult, k: k)
        return inorderResult[k - 1]
    }

    func visit(_ root: TreeNode?, inorder: inout [Int], k: Int) {
        guard let root, inorder.count < k else { return }
        visit(root.left, inorder: &inorder, k: k)
        inorder.append(root.val)
        visit(root.right, inorder: &inorder, k: k)
    }
}
