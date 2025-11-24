import 'dart:math';
import 'dart:collection';
class Solution {
  int lengthOfLongestSubstring(String s) {
    final charIndexMap = HashMap<String, int>();

    int maxLength = 0;
    int start = 0;
    for(int end = 0; end < s.length; end++){
      String currentChar = s[end];
      // check if the character is already in the map
      if(charIndexMap.containsKey(currentChar)){
        start = max(start, charIndexMap[currentChar]! + 1);
      }
      charIndexMap[currentChar] = end;
      maxLength = max(maxLength, end - start + 1);
    }
    return maxLength;
  }
}