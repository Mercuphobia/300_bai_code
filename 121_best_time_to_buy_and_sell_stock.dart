class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
    int minPrice = 99999999;
    for(int price in prices){
      if(price < minPrice){
        minPrice = price;
      }
      else {
        int profit = price - minPrice;
        if(profit > maxProfit){
          maxProfit = profit;
        }
      }
    }
    return maxProfit;
  }
}