# 위젯의 라이프사이클


### StatefulWidget 클래스 동작

  StatefulWidget 클래스에는 build() 메서드 외에도 특정 타이밍에 실행되는 여러 메서드가 있다.
이러한 메서드들을 생명주기(lifecycle) 메서드라고 부른다.

- initState() 메서드는 위젯이 생성될 때 호출된다.
- dispose() 메서드는 위젯이 완전히 종료될 때 호출된다.

### 생명주기 확인 실습 코드
firstPage 실행 했을 때

![poster](https://raw.githubusercontent.com/MuJuka/TIL/main/app/img/firstpage.png)

secondpage 실행 했을 때

![poster](https://raw.githubusercontent.com/MuJuka/TIL/main/app/img/secondpage.png)


firstpage로 되돌아 갈 떄

![poster](https://raw.githubusercontent.com/MuJuka/TIL/main/app/img/image.png)
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: FirstStatefulPage(),
    );
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}


class FirstStatefulPage extends StatefulWidget {
  _FirstStatefulPageState createState() => _FirstStatefulPageState();
}

class _FirstStatefulPageState extends State<FirstStatefulPage> {
  @override
  void initState() {
    super.initState();
    print('FirstPage initState()');
  }

  @override
  void dispose() {
    print('FirstPage dispose()');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: ()  {
          final person = Person('홍길동', 20);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondStatefulPage(person: person),
            ),
          );
        },
      ),
    );
  }
}

class SecondStatefulPage extends StatefulWidget {
  final Person person;

  const SecondStatefulPage({Key? key, required this.person}) : super(key: key);

  @override
  _SecondStatefulPageState createState() => _SecondStatefulPageState();
}

class _SecondStatefulPageState extends State<SecondStatefulPage> {
  @override
  void initState() {
    super.initState();
    print('SecondPage initState()');
  }

  @override
  void dispose() {
    print('SecondPage dispose()');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
```
