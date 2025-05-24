# PYTHON

## 단순 연결리스트 파이썬으로 만들어보기

### 코드
```py
class SList:
    class Node:
        def __init__(self, item, link):
           self.item = item
           self.next = link

    def __init__(self):
        print("난 SList의 생성자")
        self.head = None
        self.size = 0
    def isEmpty(self):
        return self.size == 0

    def insert_front(self, item):
        if self.isEmpty():
            self.head = self.Node(item , None)
        else:
            self.head= self.Node(item, self.head)
        self.size += 1

    def insert_after(self, item, p):
        p.next = self.Node(item, p.next)
        self.size += 1

    def search(self, target):
        p = self.head
        for k in range(self.size):
            if target == p.item:
                return k
            p = p.next

    #p가 참조하는 노드의 다음 노드를 삭제제
    def delete_after(self, p):
        if self.isEmpty():
            print("리스트가 텅 비어있어서 삭제불가.") 
            return None
        else:
            t = p.next
            p.next = t.next
            del t 
            self.size -= 1

    def delete_front(self):
        if self.isEmpty():
            print("리스트가 텅 비어있어서 삭제불가")
            return None
        else:
            t = self.head
            self.head = self.head.next
            del t
            self.size -= 1
    
       # 사용자가 원하는 인덱스에 노드 생성
    def insert_index(self, index, item):
        if index < 0 or index > self.size:
            print("잘못된 인덱스입니다.")
            return
        
        if index == 0:
            self.insert_front(item)
        else:
            p = self.head
            for k in range(index - 1):
                p = p.next
            self.insert_after(item, p)

    # 사용자가 원하는 인덱스에 있는 노드 삭제
    def delete_index(self, index):
        if index < 0 or index >= self.size:
            print("잘못된 인덱스입니다.")
            return

        if index == 0:
            self.delete_front()
        else:
            p = self.head
            for k in range(index - 1):
                p = p.next
            self.delete_after(p)

    # 연결리스트의 맨 마지막 노드를 삭제
    def delete_final(self):
        if self.isEmpty():
            print("리스트가 텅 비어있어서 삭제불가")
            return

        if self.size == 1:
            self.delete_front()
        else:
            p = self.head
            while p.next.next:
                p = p.next
            self.delete_after(p)


    def printList(self):
        p = self.head
        while p:
            if p.next  is not None:
                print(p.item , "=>", end="")
            else:
                print(p.item)
            p = p.next

def globalFunc():
    pass

if __name__ == "__main__":
    s = SList()
    s.insert_front("apple")
    s.insert_front("orange")
    s.printList()
    s.insert_after("cherry", s.head.next)
    s.printList()
    s.insert_front("pear")

    s.insert_front("melon")
    s.insert_front("strawberry")
    s.insert_front("grape")
    s.insert_front("peach")
    s.insert_front("banana")

    s.printList()
    print("cherry는 %d번째 노드에 있다." % (s.search("cherry")+1))
    s.delete_after(s.head)
    s.printList()
    s.delete_front()
    print("첫번째 노드 삭제후 \t\t")
    s.printList()
    
    #실습 과제 함수 작성
    s.insert_index(2, "melon")
    s.delete_index(3)
    s.delete_final()
    s.printList()
```