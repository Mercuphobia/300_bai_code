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
  TreeNode? invertTree(TreeNode? root) {
    if(root == null){
      return null;
    }
    TreeNode? invertedLeft = invertTree(root.left);
    TreeNode? invertedRight = invertTree(root.right);
    root.left = invertedRight;
    root.right = invertedLeft;
    return root;
  }
}