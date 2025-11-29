class Solution {
  List<int> countBits(int n) {
    List<int> count = [];
    for(int i = 0; i <= n; i++){
      int value = countBinary(i);
      count.add(value);
    }
    return count;
  }
  int countBinary (int num){
    String stringBinary = "";
    int currentNum = num;
    while(currentNum > 0){
      int carry = currentNum % 2;
      stringBinary += carry.toString();
      currentNum = currentNum ~/ 2;
    }

    int count = 0;
    for(int i = 0; i < stringBinary.length; i++){
      String char = stringBinary[i];
      int num = int.parse(char);
      count += num;
    }
    return count;
  }
}