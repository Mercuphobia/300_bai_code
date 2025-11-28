class Solution {
  String addBinary(String a, String b) {
    StringBuffer result = StringBuffer();
    int i = a.length-1;
    int j = b.length-1;
    int carry = 0;

    while(i>=0 || j>=0 || carry > 0){
      int bitA = 0;
      if(i>=0){
        bitA = a.codeUnitAt(i) - '0'.codeUnitAt(0);
        i--;
      }
      int bitB = 0;
      if(j>=0){
        bitB = b.codeUnitAt(j) - '0'.codeUnitAt(0);
        j--;
      }
      int sum = bitA + bitB + carry;
      result.write(sum % 2);
      carry = sum ~/ 2;
    }
    return result.toString().split('').reversed.join();
  }
}