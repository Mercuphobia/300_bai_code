class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int, int> count = {};
    for(int i = 0; i < nums.length; i++){
      count.update(nums[i], (value) => value + 1, ifAbsent: () => 1);
      if(count[nums[i]]! >= 2){
        return true;
      }
    }
    return false;
  }
}