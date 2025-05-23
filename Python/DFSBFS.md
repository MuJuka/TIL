# PYTHON

## DFS와 BFS 프로그램

### 문제
그래프를 DFS로 탐색한 결과와 BFS로 탐색한 결과를 출력하는 프로그램을 작성하시오.
단, 방문할 수 있는 정점이 여러 개인 경우에는 정점 번호가 작은 것을 먼저 방문하고,
더 이상 방문할 수 있는 점이 없는 경우 종료한다.

정점 번호는 1번부터 N번까지이다.

### 입력
첫째 줄에 정점의 개수 N, 간선의 개수 M, 탐색을 시작할 정점 번호 V가 주어진다.
다음 M개의 줄에는 간선이 연결하는 두 정점의 번호가 주어진다.
한 줄에 두 정점 u, v가 주어지면 이는 양방향 간선을 의미한다.

1 ≤ N ≤ 1,000

1 ≤ M ≤ 10,000

1 ≤ V ≤ N

정점 번호는 중복되지 않으며, 간선에 자기 자신과 연결된 경우(자기 루프)는 없다.

### 출력
첫째 줄에 DFS 결과
둘째 줄에 BFS 결과를 출력한다.
모든 정점은 공백으로 구분한다.

### 답
```py
import sys
from collections import deque

sys.setrecursionlimit(10000)
input = sys.stdin.readline

# 입력 처리
n, m, start = map(int, input().split())
graph = [[] for _ in range(n + 1)]

for _ in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)

# 방문 순서 보장을 위해 오름차순 정렬
for i in range(1, n + 1):
    graph[i].sort()

# DFS 구현
visited_dfs = [False] * (n + 1)
def dfs(v):
    visited_dfs[v] = True
    print(v, end=' ')
    for i in graph[v]:
        if not visited_dfs[i]:
            dfs(i)

# BFS 구현
visited_bfs = [False] * (n + 1)
def bfs(v):
    queue = deque([v])
    visited_bfs[v] = True
    while queue:
        cur = queue.popleft()
        print(cur, end=' ')
        for i in graph[cur]:
            if not visited_bfs[i]:
                visited_bfs[i] = True
                queue.append(i)

# 실행
dfs(start)
print()
bfs(start)
```