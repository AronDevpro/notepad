import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Widget button;
  Background({super.key, required this.child, required this.button});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SAVEME', style: TextStyle(fontSize: 25),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey,
        child: child,
      ),
      floatingActionButton: button,
    );
  }
}
