/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool isSubtree(TreeNode? root, TreeNode? subRoot) {
    if(root == null) return false;
    if(isSameTree(root, subRoot)) return true;
    return isSameTree(root.left, subRoot) || isSameTree(root.right, subRoot);
  }
  bool isSameTree(TreeNode? a, TreeNode? b){
    if(a == null && b == null) return true;
    if(a == null || b == null) return false;
    if(a.val != b.val) return false;
    return isSameTree(a.left, b.left) && isSameTree(a.right, b.right);
  }
}