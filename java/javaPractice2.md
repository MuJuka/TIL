# JAVA 연습

## 연결 요소의 개수 구하기

### 문제
방향 없는 그래프가 주어졌을 때 연결 요소의 개수를 구하는 프로그램을 작성하시오.

### 입력
첫째 줄에 노드의 개수 N (1 ≤ N ≤ 1,000)과
에지의 개수 M (0 ≤ M ≤ N × (N - 1) / 2)이 주어진다.

둘째 줄부터 M개의 줄에 에지의 양 끝점 u와 v가 주어진다.
(1 ≤ u, v ≤ N, u ≠ v)

같은 에지는 한 번만 주어진다.

### 출력
첫째 줄에 연결 요소의 개수를 출력한다.

### 답
```java
import java.util.*;

public class Main {
    static ArrayList<Integer>[] graph;
    static boolean[] visited;

    public static void dfs(int node) {
        visited[node] = true;
        for (int next : graph[node]) {
            if (!visited[next]) {
                dfs(next);
            }
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt(); 
        int M = sc.nextInt(); 

        graph = new ArrayList[N + 1];
        visited = new boolean[N + 1];

        for (int i = 1; i <= N; i++) {
            graph[i] = new ArrayList<>();
        }

        for (int i = 0; i < M; i++) {
            int u = sc.nextInt();
            int v = sc.nextInt();
            graph[u].add(v);
            graph[v].add(u);
        }

        int count = 0;
        for (int i = 1; i <= N; i++) {
            if (!visited[i]) {
                dfs(i);
                count++;
            }
        }

        System.out.println(count);
    }
}

```