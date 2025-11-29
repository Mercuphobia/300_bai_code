class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanValue = {
        'I' : 1,
        'V' : 5,
        'X' : 10,
        'L' : 50,
        'C' : 100,
        'D' : 500,
        'M' : 1000
    };
    if(s.isEmpty){
        return 0;
    }
    int n = s.length;
    int result = romanValue[s[n-1]]!;
    int previousValue = result;
    for(int i = n - 2; i >= 0; i--){
        int currentValue = romanValue[s[i]]!;
        if(previousValue > currentValue){
            result -= currentValue;
        }
        else {
            result += currentValue;
        }
        previousValue = currentValue;
    }
    return result;
  }
}