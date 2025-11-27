class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<int> count = List<int>.filled(26,0);
    for(int i = 0; i < magazine.length; i++){
      int charCode = magazine.codeUnitAt(i);
      int index = charCode - 'a'.codeUnitAt(0);
      count[index]++;
    }
    for(int i = 0; i < ransomNote.length; i++){
      int charCode = ransomNote.codeUnitAt(i);
      int index = charCode - 'a'.codeUnitAt(0);
      if(count[index] > 0){
        count[index]--;
      }
      else {
        return false;
      }
    }
    return true;
  }
}