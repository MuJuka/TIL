# Dart 문법 (2/2)

## Dart 실습

### 1. 객체연습
```dart
class Person {
  String _name = "";
  int _age = 0;
  String desc = "";

  String get name => _name;
  int get age => _age;

  Person(this._name, this._age, {this.desc = ''});

  void addOneYear() {
    _age++;
  }
}

void main() {
  var p = Person('최관우', 24, desc: 'ㅇㅇㅇ');

  print(p.age);
  print(p.name);
  print(p.desc);

  p.addOneYear();
  print(p.age);
}
```
### Ractangle 클래스로 직사각형 위치 크기설정
```dart
class Rectangle {
  num left, top;
  num right, bottom;

  Rectangle(this.left, this.top, this.right, this.bottom);

  num get width => right - left;
  set width(num value) => right = left + value;
  num get height => bottom - top;
  set height(num value) => bottom = top + value;
}

void main() {
  var r = Rectangle(5, 10, 15, 20);
  print([r.left, r.top, r.right, r.bottom]);

  r.width = 10;
  r.height = 20;
  print([r.left, r.top, r.right, r.bottom]);
}
```

### 3. 상속

```dart
class Hero {
  String name = '영웅';

  void run() {
    print('뛴다!');
  }
}

class SuperHero extends Hero {
  @override
  void run() {
    print("-----------------");
    super.run();
    this.fly();
    print("-----------------");
  }

  void fly() {
    print('난다!');
  }
}

void main() {
  Hero normalHero = Hero();
  Hero superHero = SuperHero();

  print(normalHero.name);
  print(superHero.name);

  print('');
  normalHero.run();
  print('');
  superHero.run();

  List<Hero> heroes = [normalHero, superHero];
  heroes.forEach((hero) => hero.run());
}
```

### 4. 추상 클래스
```dart
//Monser는 attack 할 수 있다.
abstract class Monster {
  void attack();
}

// Goblin은 Monster이며 고블린 어택을 한다.
class Goblin implements Monster {
  @override
  void attack() => print('고블린 어택');
}

abstract class Flyable {
  void fly();
}

// Bat은 Monster이며 할퀴기 attack을 한다.
class Bat implements Monster, Flyable {
  @override
  void attack() => print('할퀴기!');

  @override
  void fly() => print('난다!');
}

void main() {
  Goblin m1 = Goblin();
  m1.attack();
  Bat m2 = Bat();
  m2.attack();
  m2.fly();

  print('');

  List<Monster> monsters = [m1, m2];
  monsters.forEach((m) {
    m.attack();

    if (m is Bat) {
      (m as Bat).fly();
    }
  });
}
```

### 5. 열거형

```dart
enum LoginStatus { login, logout }

void main() {
  LoginStatus status = LoginStatus.logout;

  print(status);

  switch (status) {
    case LoginStatus.login:
      print('로그인');
      break;
    case LoginStatus.logout:
      print('로그아웃');
      break;
  }
}
```

### 6. 컬렉션

```dart
void main() {
  var lottoNums = [5, 6, 11, 13, 17, 21];
  var countryMap = {'한국': '서울', '일본': '도쿄', '중국': '북경'};
  var setNums = {1, 2, 3, 4, 5, 6};

  print(lottoNums[0]); // 5
  print(countryMap['일본']); // 도쿄
  print(setNums.contains(5)); //true

  lottoNums.add(45); // 보너스 번호
  print(lottoNums);

  countryMap['인도'] = '인디아';
  print(countryMap);

  setNums.add(6);
  print(setNums);
}

실습 forEach

void main() {
  var lottoNums = [5, 6, 11, 13, 17, 21];

  // lottoNums.forEach((num) => print(num));
  lottoNums.forEach(print);
  
  var f = () => print('되네?');
  f();
}
```

### 7. 계단식 표기법 ..

```dart
void main() {
  final items = [1, 2, 3, 4, 5];

  //   var result = items;
  //   result.add(6);
  //   result.remove(2);
  //   print(result); // [1, 3, 4, 5, 6]

  print(
    items
      ..add(6)
      ..remove(2),
  ); // [1, 3, 4, 5, 6]
}
```

### 8. null 처리
```dart
class Person {
  String? name;
  int? age;
}

void main() {
  var p = Person();
  //p.name = '최관우';
  print(p.name?.length ?? 0);
}
```


