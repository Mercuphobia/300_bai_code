class Solution {
  int hammingWeight(int n) {
    String intToBinary = "";
    int count = 0;
    while(n>0){
      int current = n % 2;
      intToBinary += current.toString();
      n = n ~/ 2;
    }
    for(int i = 0; i < intToBinary.length; i++){
      count += int.parse(intToBinary[i]);
    }
    return count;
  }
}