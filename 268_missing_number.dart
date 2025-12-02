class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    for(int i = 0; i < nums.length; i++){
      if(nums[i] != i){
        return i;
      }
    }
    return nums.length;
  }
}