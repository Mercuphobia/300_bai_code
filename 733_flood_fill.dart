class Solution {
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    int oldColor = image[sr][sc];
    if(oldColor == color) return image;

    void dfs(int r, int c){
      if(r < 0 || r > image.length -1 || c < 0 || c > image[1].length -1){
        return;
      }
      if(image[r][c] != oldColor){
        return;
      }
      else {
        image[r][c] = color;
        dfs(r+1,c);
        dfs(r-1,c);
        dfs(r,c+1);
        dfs(r,c-1);
      }
    }
    dfs(sr, sc);
    return image;
  }
}