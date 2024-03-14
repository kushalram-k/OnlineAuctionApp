import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => HhomeState();
// }

// class HhomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'), // First tab
              Tab(text: 'Tab 2'), // Second tab
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Content of Tab 1')), // Content of first tab
            Center(child: Text('Content of Tab 2')),
            Center(child:Text("jwbfiouwneof")), // Content of second tab
          ],
        ),
      ),
    );
  }
}