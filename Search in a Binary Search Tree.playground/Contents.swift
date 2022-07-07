import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let rootValue = root?.val else {
            return nil
        }
        
        if rootValue == val {
            return root
            
        } else if rootValue > val {
            if root?.left == nil {
                return nil
            }
            
            return searchBST(root?.left, val)
        }
        
        if root?.right == nil {
            return nil
        }
        
        return  searchBST(root?.right, val)
    }
}
