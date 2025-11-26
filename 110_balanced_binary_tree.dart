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
  bool isBalanced(TreeNode? root) {
    return checkHeight(root) != 1;
  }
  int checkHeight(TreeNode? node){
    if(node == null){
      return 0;
    }
    int leftHeight = checkHeight(node.left);
    if(leftHeight == -1) return -1;
    int rightHeight = checkHeight(node.right);
    if(rightHeight == -1) return -1;
    int diff = (leftHeight - rightHeight).abs();
    if(diff > 1){
      return -1;
    }
    return (leftHeight > rightHeight ? leftHeight : rightHeight) + 1;
  }
}