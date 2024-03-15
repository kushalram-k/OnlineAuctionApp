import 'package:flutter/material.dart';

class additem extends StatefulWidget {
  const additem({super.key});

  @override
  State<additem> createState() => _additemState();
}

class _additemState extends State<additem> {
  String item_name = '';
  String desription = '';
  String category = '';
  double base_price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sell Item',
          style: TextStyle(color: Color.fromARGB(255, 30, 28, 27)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
