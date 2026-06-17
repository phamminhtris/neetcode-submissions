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
        visit(root, inorder: &inorderResult)
        return inorderResult[k - 1]
    }

    func visit(_ root: TreeNode?, inorder: inout [Int]) {
        guard let root else { return }
        visit(root.left, inorder: &inorder)
        inorder.append(root.val)
        visit(root.right, inorder: &inorder)
    }
}
