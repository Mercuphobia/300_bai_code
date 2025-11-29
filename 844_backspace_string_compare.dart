class Solution {
  bool backspaceCompare(String s, String t) {
    String sParse = parseString(s);
    String tParse = parseString(t);
    return sParse == tParse;
  }
  String parseString(String s){
    List<String> stack = [];
    for(int i = 0; i < s.length; i++){
      String char = s[i];
      if(char == "#"){
        stack.removeLast();
      }
      else{
        stack.add(char);
      }
    }
    return stack.join();
  }
}