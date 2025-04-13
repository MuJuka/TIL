import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final height = constraints.maxHeight;

            return Column(
              children: [
                SizedBox(
                  height: height * 0.5,
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.5,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.25,
                              color: Colors.blue,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: width * 0.25,
                                  height: height * 0.25,
                                  color: Colors.black,
                                ),
                                Container(
                                  width: width * 0.25,
                                  height: height * 0.25,
                                  color: Colors.orange,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.5,
                  color: Colors.yellow,
                ),
              ],
            );
          },
        ),
      ),
    ),
  ));
}
