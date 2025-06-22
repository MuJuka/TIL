# PYTHON

##  버블정렬 파이썬으로 구현

### 코드
```py
def bubble_sort(arr):
    n = len(arr)
    # n번 반복
    for i in range(n):
        # 마지막 i개는 이미 정렬되어 있음
        for j in range(0, n - i - 1):
            # 앞의 값이 뒤의 값보다 크면 교환
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]

# 배열
data = [64, 34, 25, 12, 22, 11, 90]

print("정렬 전 배열:")
print(data)

# 정렬 함수 호출
bubble_sort(data)

print("정렬 후 배열:")
print(data)

```