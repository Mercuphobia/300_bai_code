class Solution {
  bool isPalindrome(String s) {
    String sLower = s.toLowerCase();
    String result = sLower.replaceAll(RegExp(r'[^a-z0-9]'), '');
    int left = 0;
    int right = result.length - 1;
    while(left < right){
      if(result[left] != result[right]){
        return false;
      }
      else{
        left++;
        right--;
      }
    }
    return true;
  }
}