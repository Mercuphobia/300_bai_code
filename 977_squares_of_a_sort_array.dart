class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> result = nums.map((x) => x*x).toList();
    result.sort();
    return result;
  }
}