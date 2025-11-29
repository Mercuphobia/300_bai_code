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
  int _maxDiameter = 0;
  int diameterOfBinaryTree(TreeNode? root) {
    _maxDiameter = 0; // Đặt lại cho mỗi lần gọi hàm
    _getHeight(root);
    return _maxDiameter;
  }

  int _getHeight(TreeNode? node){
    if(node == null){
      return 0;
    }
    int leftHeight = _getHeight(node.left);
    int rightHeight = _getHeight(node.right);

    int currentDiameter = leftHeight + rightHeight;
    _maxDiameter = _maxDiameter > currentDiameter ? _maxDiameter : currentDiameter;

    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }
}