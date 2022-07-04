import UIKit

/**
 *Definition for singly-linked list. */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
    if head == nil {
        return nil
    }
    return swap(head)
}

func swap(_ head: ListNode?) -> ListNode? {
    if head?.next == nil {
        print("heelo")
        return head
    } else if head?.next?.next == nil {
        print("heelo2")
        let newHead = head?.next
        head?.next = nil
        newHead?.next = head
        
        return newHead
    }
    print("hello3")
    let newNext = swap(head?.next?.next)
    let newHead = head?.next
    head?.next = newNext
    newHead?.next = head
    
    return newHead
}


//input: 1->2->3->4
//output: 2->1->4->3
