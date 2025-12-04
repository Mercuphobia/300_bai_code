class Solution {
  List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
    List<List<int>> result  = [];

    int newStart = newInterval[0];
    int newEnd = newInterval[1];

    bool checkInsert = false;

    for(final interval in intervals){
      int currentStart = interval[0];
      int currentEnd = interval[1];
      // TH1: khoang hien tai nam hoan toan sau newInterver
      if(currentStart > newEnd){
        if(!checkInsert){
          result.add([newStart, newEnd]);
          checkInsert = true;
        }
        result.add(interval);
      }
      // TH2: khoang hien thai nam truowc newInterver
      else if(currentEnd < newStart){
        result.add(interval);
      }
      // TH3: Khoang hien tai bi chong lan
      else{
        newStart = newStart < currentStart ? newStart : currentStart;
        newEnd = newEnd > currentEnd ? newEnd : currentEnd;
      }
    }
    if(!checkInsert){
      result.add([newStart, newEnd]);
    }
    return result;
  }
}