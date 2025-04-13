import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '현재 시각',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CurrentTimePage(),
    );
  }
}

class CurrentTimePage extends StatefulWidget {
  @override
  _CurrentTimePageState createState() => _CurrentTimePageState();
}

class _CurrentTimePageState extends State<CurrentTimePage> {
  late Timer _timer;
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final formattedDate = '${now.year}-${_padZero(now.month)}-${_padZero(now.day)}';
    final formattedTime = '${_formatAmPm(now)} ${_padZero(now.hour % 12)}:${_padZero(now.minute)}:${_padZero(now.second)}';
    setState(() {
      _currentTime = '$formattedDate\n$formattedTime';
    });
  }

  String _padZero(int value) {
    return value.toString().padLeft(2, '0');
  }

  String _formatAmPm(DateTime dateTime) {
    return dateTime.hour >= 12 ? '오후' : '오전';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('현재 시각'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _currentTime,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
