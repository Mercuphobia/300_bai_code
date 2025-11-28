class Solution {
  int majorityElement(List<int> nums) {
    int n = nums.length;
    int maxValue = n~/2;
    Map<int, int> count = {};
    int max = 0;
    int ans = 0;
    for(int num in nums){
      count[num] = (count[num] ?? 0) + 1;
      if(count[num]! > maxValue){
        return num;
      }
      if(count[num]! > max){
        max = count[num]!;
        ans = num;
      }
    }
    return ans;
  }
}