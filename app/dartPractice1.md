# Dart 문법 (1/2)

## 문법 정리

### 주석
- //
- /** **/
- /// : dartdoc같은 문서 생성 도구를 이용해 자동으로 문서화 가능

### 변수
- int : 정수 
- double : 실수(소수점)
- String : 문자열
- bool : 참 또는 거짓
- var : 변수 타입을 추론 할 수 있으면 선언시 변수형을 "var"로 쓸수있음  
    var를 쓰는 이유 : 가독성, 유연성, 일관성 향상

### 상수 final, const
- final과 const의 차이점 : final은 동작중에 값이 고정되나 const는 컴파일 시점에 값이 고정됨

### 연산자
- +,-,* : 더하기, 빼기, 곱하기
- / : 나누기(double형으로 반환)
- ~/ : 몫(int형으로 반환)
- % : 나머지(int형으로 반환)

### 논리연산자
- && : AND 연산자
- || : OR 연산자
- == : 동등 비교 연산자
- | : 비트 OR 연산자
- != : 다름 비교 연산자


### 함수 - 익명함수
- 익명 함수는 함수 코드를 변수 값처럼 취급해 변수에 담을 수 있도록 함
```dart
var list = [1, 2, 3, 4];
list.forEach((item) {			// (item) { … } 익명 함수
   print(item);
});
```

### 함수 - 람다식
```dart
(number) => number %2 == 0;

var list = [1, 2, 3, 4];
list.forEach((item) => print(item));

※ 익명 함수보다 단순한 함수 코드일 경우 람다 형태로 간단하게 표현 가능
```

## Dart 실습

### 1. 구구단 출력하기
```dart
void main() {
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      print('$i * $j = ${i * j}');
    }
    print('-------------------');
  }
}
```
### 2. 별로 정사각형 만들기 (안에 /, \\ 추가하기)
```dart
var result = '';
void main() {
  int n = 10;

  for (int y = 0; y < n; y++) {
    for (int x = 0; x < n; x++) {
      var c = pattern1(n, x, y);
      c |= pattern2(n, x, y);
      c |= pattern3(n, x, y);
      if (c) {
        result += '=';
      } else {
        result += ' ';
      }
    }
    result += '\n';
  }

  print(result);
}

// 빈 정사각형 찍는 함수
bool pattern1(int n, int x, int y) {
  var condition = y == 0;
  condition |= y == (n - 1);
  condition |= x == 0;
  condition |= x == (n - 1);
  return condition;
}

// /찍는 함수
bool pattern2(int n, int x, int y) {
  var condition = x == n - 1 - y;

  return condition;
}

// \찍는 함수
bool pattern3(int n, int x, int y) {
  var condition = x == y;

  return condition;
}
```

### 3. 년/월/일을 입력받아 요일 출력
- DateTime클래스 활용 ex) date.weekday은 date에 들어온 요일을 정수로 변경하는 속성

```dart
void main() {
  List<String> day = ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'];

  var input = "2025-03-11";

  DateTime date = DateTime.parse(input);

  print('${day[date.weekday - 1]}입니다.');
}
```

