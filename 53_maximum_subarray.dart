class Solution {
  int maxSubArray(List<int> nums) {
    int maxSubArraySum = nums[0];
    int currentSubArraySum = nums[0];

    for(int i=1;i<nums.length;i++){
      if(currentSubArraySum + nums[i] > nums[i]){
        currentSubArraySum += nums[i];
      }
      else{
        currentSubArraySum = nums[i];
      }
      if(currentSubArraySum > maxSubArraySum){
        maxSubArraySum = currentSubArraySum;
      }
    }
    return maxSubArraySum;
  }
}