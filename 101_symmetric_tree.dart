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
  bool isSymmetric(TreeNode? root) {
    if(root == null){
      return true;
    }
    return _isMirror(root.left, root.right);
  }
  bool _isMirror(TreeNode? tree1, TreeNode? tree2){
    if(tree1 == null && tree2 == null){
      return true;
    }
    if(tree1 == null || tree2 == null || tree1.val != tree2.val){
      return false;
    }
    return _isMirror(tree1.left, tree2.right) && _isMirror(tree1.right, tree2.left);
  }
}