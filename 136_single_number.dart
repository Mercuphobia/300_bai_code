class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> count = {};
    for(int i in nums){
      count.update(i, (value) => value + 1, ifAbsent: () => 1);
    }
    for(var entry in count.entries){
      if(entry.value == 1){
        return entry.key;
      }
    }
    return 0;
  }
}