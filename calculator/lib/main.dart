import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Container(
          width: 400,
          height: 670,
          color: Colors.black26,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.centerRight,
                  color: Colors.white70,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )

                ),
              ),
              Expanded(
                flex: 3,
                child: GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  children: [
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "%",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "CE",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "C",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "<-",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "7",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "9",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "X",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "5",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "6",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "+/-",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: Text(
                        ".",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
