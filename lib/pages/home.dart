import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List colorList = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
  List colorName = ['Red', 'Green', 'Blue', 'Yellow'];

  int currentColor = 0;
  void backgroundColorToggle(int index) {
    setState(() {
      currentColor = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorList[currentColor],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'C O L O R S',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: colorName.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  tileColor: Colors.white,
                  title: Text(colorName[index]),
                  onTap: () {
                    backgroundColorToggle(index);
                  }),
            );
          },
        ));
  }
}
