class Solution {
  int longestPalindrome(String s) {
    Set<int> oddChar = {};
    int length = 0;
    for(int charCode in s.codeUnits){
      if(oddChar.contains(charCode)){
        oddChar.remove(charCode);
        length+=2;
      }
      else{
        oddChar.add(charCode);
      }
    }
    if(oddChar.isNotEmpty){
      length+=1;
    }
    return length;
  }
}