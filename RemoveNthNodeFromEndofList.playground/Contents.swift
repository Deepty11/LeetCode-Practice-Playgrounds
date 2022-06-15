//import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
        
    }
}

class LinkedList {
    var head: ListNode? = nil
}
let vals = [1,2,3,4,5]
var head: ListNode? = nil

for num in vals {
    if head == nil {
        head = ListNode(num)
    } else {
        while(head?.next != nil) {
            print(head!.val)
            head = head?.next
        }
        
        head?.next = ListNode(num)
    }
}

if var current = head {
    while(current.next != nil) {
        print(current.val)
        current = current.next!
    }
}


