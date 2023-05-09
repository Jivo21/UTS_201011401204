import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas MP - Jivo Jinola',
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  final List<String> _numbers = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView - Jivo Jinola - 201011401204'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        children: List.generate(12, (index) {
          Color color;
          switch (index) {
            case 8:
              color = Color.fromARGB(255, 3, 121, 85)!;
              break;
            case 9:
              color = Color.fromARGB(255, 206, 229, 240)!;
              break;
            case 10:
              color = Color.fromARGB(255, 203, 233, 169)!;
              break;
            case 11:
              color = Color.fromARGB(255, 165, 216, 107);
              break;
            default:
              color = Color.lerp(
                Color.fromARGB(255, 181, 232, 255)!,
                Color.fromARGB(255, 27, 94, 32)!,
                index / 11,
              )!;
          }
          return Container(
            color: color,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  _numbers[index],
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
