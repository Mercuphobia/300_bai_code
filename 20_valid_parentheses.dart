import 'dart:collection';
class Solution {
  bool isValid(String s) {
    final List<String> stack = [];
    final Map<String, String> map = {
      ')' : '(',
      '}' : '{',
      ']' : '[',
    };

    for(int i=0;i<s.length;i++){
      String char = s[i];
      if(map.containsKey(char)){
        if(stack.isEmpty){
          return false;
        }

        String topElement = stack.removeLast();
        if(topElement != map[char]){
          return false;
        }
      }
      else{
        stack.add(char);
      }
    }
    return stack.isEmpty;
  }
}