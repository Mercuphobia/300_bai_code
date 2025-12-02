class Solution {
  bool isPalindrome(int x) {
    if(x < 0){
      return false;
    }
    int reverse = 0;
    int origin = x;
    while(origin > 0){
      int current = origin % 10;
      reverse = reverse*10 + current;
      origin = origin ~/ 10;
    }
    return reverse == x;
  }
}