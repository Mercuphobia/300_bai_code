/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
    if(head == null){
      return false;
    }
    ListNode? slow = head;
    ListNode? fast = head;

    while(fast != null && fast.next != null){
      slow = slow!.next;
      fast = fast.next!.next;
    }
    ListNode? mid = slow;
    ListNode? prev = null;
    while(mid != null){
      ListNode? nextTmp = mid.next;
      mid.next = prev;
      prev = mid;
      mid = nextTmp;
    }
    ListNode? left = head;
    ListNode? right = prev;
    while(right != null){
      if(left!.val != right.val){
        return false;
      }
      left = left.next;
      right = right.next;
    }
    return true;
  }
}