# PYTHON

##  이진 탐색 트리(BST)를 문자열 리스트(nameAry)를 사용해 구성한 뒤, 중위 순회(in-order traversal)를 통해 데이터를 출력하는 파이썬 프로그램 구현하기

### 코드
```py
class TreeNode:
    def __init__(self):
        self.left = None
        self.data = None
        self.right = None

## 전역변수 선언 부분 ##
memory = []
root = None
nameAry = ['블랙핑크', '레드벨벳', '마마무', '에이핑크', '걸스데이', '트와이스']

def inorder_traversal(node):
    if node is not None:
        inorder_traversal(node.left) #왼쪽 서브트리방문
        print(node.data, end="")
        inorder_traversal(node.right)

## main 코드 영역 ##
if __name__ == "__main__":
    node = TreeNode()
    node.data = nameAry[0]
    root = node 
    memory.append(node)

    for name in nameAry[1:]:
        node = TreeNode()
        node.data = name
        current = root
        while True:
            if name < current.data:
                if current.left == None:
                    current.left = node
                    break
                current = current.left
            else:
                if current.right == None:
                    current.right = node
                    break 
                current = current.right

        memory.append(node)

    print("이진 탐색 트리 구성 완료")
    print("memory 리스트에 저장된 노드 데이터들")
    for node in memory:
        print(node.data)
    print()
    print("이진탐색트리의 모든 노드값 출력(중위순회)")
    inorder_traversal(root)
```